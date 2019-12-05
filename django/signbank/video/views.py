from django.shortcuts import render, get_object_or_404, redirect
from django.template import Context, RequestContext
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.conf import settings
from signbank.video.models import Video, GlossVideo, GlossVideoHistory
from signbank.video.forms import VideoUploadForm, VideoUploadForGlossForm
# from django.contrib.auth.models import User
# from datetime import datetime as DT
import os
import re
import glob
import shutil

from signbank.dictionary.models import Gloss, DeletedGlossOrMedia
from signbank.settings.base import GLOSS_VIDEO_DIRECTORY, WRITABLE_FOLDER
from signbank.settings.server_specific import FFMPEG_PROGRAM

from signbank.tools import generate_still_image, get_default_annotationidglosstranslation

def addvideo(request):
    """View to present a video upload form and process
    the upload"""

    if request.method == 'POST':

        form = VideoUploadForGlossForm(request.POST, request.FILES)
        if form.is_valid():

            gloss_id = form.cleaned_data['gloss_id']
            gloss = get_object_or_404(Gloss, pk=gloss_id)
            
            # deal with any existing video for this sign
            goal_folder = WRITABLE_FOLDER+GLOSS_VIDEO_DIRECTORY + '/' + gloss.idgloss[:2] + '/'
            goal_filename = gloss.idgloss + '-' + str(gloss.pk) + '.mp4'
            goal_location = goal_folder + goal_filename

            vfile = form.cleaned_data['videofile']
            vfile.name = gloss.idgloss + "-" + str(gloss.pk) + ".mp4"
            redirect_url = form.cleaned_data['redirect']

            old_vid = GlossVideo.objects.filter(gloss_id=gloss_id)
            old_vid.first().delete()
            
            # make a new GlossVideo object for the new file
            video = GlossVideo(videofile=vfile, gloss=gloss)
            video.save()

            # Issue #162: log the upload history
            log_entry = GlossVideoHistory(action="upload", gloss=gloss, actor=request.user,
                                          uploadfile=vfile, goal_location=goal_location)
            log_entry.save()

            # TODO: provide some feedback that it worked (if
            # immediate display of video isn't working)
            return redirect(redirect_url)

    # if we can't process the form, just redirect back to the
    # referring page, should just be the case of hitting
    # Upload without choosing a file but could be
    # a malicious request, if no referrer, go back to root
    if 'HTTP_REFERER' in request.META:
        url = request.META['HTTP_REFERER']
    else:
        url = '/'
    return redirect(url)

@login_required
def deletevideo(request, videoid):
    """Remove the video for this gloss, if there is an older version
    then reinstate that as the current video (act like undo)"""

    if request.method == "POST":
        # deal with any existing video for this sign
        gloss = get_object_or_404(Gloss, pk=videoid)

        # Issue #162: log the deletion history
        log_entry = GlossVideoHistory(action="delete", gloss=gloss, actor=request.user)
        log_entry.save()

        #Extra check: if the file is still there, delete it manually
        if os.path.isfile(WRITABLE_FOLDER + gloss.get_video_path()):
            os.remove(WRITABLE_FOLDER + gloss.get_video_path())

    default_annotationidglosstranslation = get_default_annotationidglosstranslation(gloss)

    deleted_video = DeletedGlossOrMedia()
    deleted_video.item_type = 'video'
    deleted_video.idgloss = gloss.idgloss
    deleted_video.annotation_idgloss = default_annotationidglosstranslation
    deleted_video.old_pk = gloss.pk
    deleted_video.filename = gloss.get_video_path()
    deleted_video.save()

    # return to referer
    if 'HTTP_REFERER' in request.META:
        url = request.META['HTTP_REFERER']
    else:
        url = '/'
    return redirect(url)


def poster(request, videoid):
    """Generate a still frame for a video (if needed) and
    generate a redirect to the static server for this frame"""

    video = get_object_or_404(GlossVideo, gloss_id=videoid)

    return redirect(video.poster_url())


def video(request, videoid):
    """Redirect to the video url for this videoid"""

    video = get_object_or_404(GlossVideo, gloss_id=videoid)

    return redirect(video)

def iframe(request, videoid):
    """Generate an iframe with a player for this video"""

    try:
        gloss = Gloss.objects.get(pk=videoid)
        glossvideo = gloss.get_video()

        videourl = glossvideo.get_absolute_url()

        posterurl = glossvideo.poster_url()
    except:
        gloss = None
        glossvideo = None
        videourl = None
        posterurl = None


    return render(request,"iframe.html",
                              {'videourl': videourl,
                               'posterurl': posterurl,
                               'aspectRatio': settings.VIDEO_ASPECT_RATIO})


def create_still_images(request):
    processed_videos = []
    for gloss in Gloss.objects.all():
        video_path = WRITABLE_FOLDER + gloss.get_video_path()
        if os.path.isfile(video_path.encode('UTF-8')):
            idgloss_prefix = gloss.idgloss[:2]
            (folder, basename) = os.path.split(video_path)
            generate_still_image(idgloss_prefix, folder + os.sep, basename)
            processed_videos.append(video_path)
    return HttpResponse('Processed videos: <br/>' + "<br/>".join(processed_videos))
