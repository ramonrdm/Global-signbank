import socket
import os
hostname = socket.gethostname()

ROOT = '../../../../'

def get_secret(secret_name):
  try:
    with open('/run/secrets/{0}'.format(secret_name), 'r') as secret_file:
        return secret_file.read()
  except IOError:
    return None

BASE_DIR = ROOT+"code/"
WRITABLE_FOLDER = BASE_DIR+'media/writable/'

# Added test database, to run unit tests using this copy of the database, use -k argument to keep test database
#      python bin/develop.py test -k
if get_secret('signbank_user_db'):
  DATABASES = {
      'default': {
          'ENGINE': 'django.db.backends.mysql',
          'NAME': get_secret('signbank_user_db'),
          'USER': get_secret('signbank_user_db'),
          'PASSWORD': get_secret('signbank_password_db'),
          'HOST': get_secret("signbank_host_db"),
          'PORT': '3306',
      }
  }
else:
  DATABASES = {'default':
                  {
                      'ENGINE': 'django.db.backends.mysql',
                      'NAME': os.getenv('DJANGO_DB_NAME'),
                      'USER': os.getenv('DJANGO_DB_USER'),
                      'PASSWORD': os.getenv('DJANGO_DB_PASSWORD'),
                      'HOST': os.getenv('DJANGO_DB_HOST'),
                      'PORT': os.getenv('DJANGO_DB_PORT')
                  }
              }


ADMINS = (('Admin', 'gustavo.borgesfr@gmail.com'))

# what do we call this signbank?
LANGUAGE_NAME = "Português Brasileiro"
COUNTRY_NAME = "Brazil"

#Influences which template and css folder are used
SIGNBANK_VERSION_CODE = 'global'

URL = ''

ALLOWED_HOSTS = ['localhost','127.0.0.1', "172.17.0.2", "signbank.libras.ufsc.br", "150.162.49.195", os.getenv('FRONTEND_HOST')]

gettext = lambda s: s
LANGUAGES = (
  ('en', gettext('English')),
  ('nl', gettext('Dutch')),
  ('zh-hans', gettext('Chinese')),
  ('pt-br', gettext('Brazilian Portuguese'))
)

LANGUAGE_CODE = "pt-br"

SEPARATE_ENGLISH_IDGLOSS_FIELD = True

DEFAULT_KEYWORDS_LANGUAGE = {'language_code_2char': 'en'}

FIELDS = {}

FIELDS['main'] = ['useInstr','wordClass',]

#''' 'locprim' ''' do lado de localizacao foi removido.
FIELDS['phonology'] = ['handedness', 'hands_number','domhndsh','subhndsh','mainhndsh','basehndsh','handCh','relatArtic','localizacao','localization','locVirtObj',
          'relOriMov','relOriLoc','oriCh','contType','movSh','movDir','repeat','altern','phonOth', 'mouthG',
          'mouthing', 'phonetVar','domhndsh_letter','domhndsh_number','subhndsh_letter','subhndsh_number','weakdrop','weakprop']

FIELDS['semantics'] = ['iconImg','namEnt','semField','valence']

FIELDS['frequency'] = ['tokNo','tokNoSgnr','tokNoA','tokNoSgnrA','tokNoV','tokNoSgnrV','tokNoR','tokNoSgnrR','tokNoGe','tokNoSgnrGe',
                       'tokNoGr','tokNoSgnrGr','tokNoO','tokNoSgnrO']

FIELDS['handshape'] = ['hsNumSel', 'hsFingSel', 'hsFingSel2', 'hsFingConf',
                       'hsFingConf2', 'hsAperture',
                       'hsSpread', 'hsFingUnsel', 'fsT', 'fsI', 'fsM', 'fsR', 'fsP',
                       'fs2T', 'fs2I', 'fs2M', 'fs2R', 'fs2P',
                       'ufT', 'ufI', 'ufM', 'ufR', 'ufP']

GLOSS_VIDEO_DIRECTORY = 'glossvideo'
GLOSS_IMAGE_DIRECTORY = 'glossimage'
GLOSS_SIGNWRITING_DIRECTORY = 'glossimage'
CROP_GLOSS_IMAGES = True
HANDSHAPE_IMAGE_DIRECTORY = 'handshapeimage'
OTHER_MEDIA_DIRECTORY = WRITABLE_FOLDER+'othermedia/'
WSGI_FILE = ROOT+'lib/python2.7/site-packages/signbank/wsgi.py'
IMAGES_TO_IMPORT_FOLDER = WRITABLE_FOLDER+'import_images/'
VIDEOS_TO_IMPORT_FOLDER = WRITABLE_FOLDER+'import_videos/'
OTHER_MEDIA_TO_IMPORT_FOLDER = WRITABLE_FOLDER+'import_other_media/'
SIGNBANK_PACKAGES_FOLDER = WRITABLE_FOLDER+'packages/'

SHOW_MORPHEME_SEARCH = True
SHOW_DATASET_INTERFACE_OPTIONS = True
DEFAULT_DATASET = ''

CNGT_EAF_FILES_LOCATION = WRITABLE_FOLDER+'corpus-ngt/eaf/'
CNGT_METADATA_LOCATION = ROOT+'CNGT_MetadataEnglish_OtherResearchers.csv'

FFMPEG_PROGRAM = "ffmpeg"
TMP_DIR = "/tmp"

API_FIELDS = [
    'idgloss',
]

# This is a short mapping between 2 and 3 letter language code
# This needs more complete solution (perhaps a library),
# but then the code cn for Chinese should changed to zh.
LANGUAGE_CODE_MAP = [
    {2:'pt-br', 3:'ptb'},
    {2:'nl',3:'nld'},
    {2:'en',3:'eng'},
    {2:'zh-hans',3:'chi'}
]

SPEED_UP_RETRIEVING_ALL_SIGNS =	True

EMAIL_HOST="smtp.sistemas.ufsc.br"
EMAIL_PORT=587
EMAIL_HOST_USER= get_secret('email_libras_user')
EMAIL_HOST_PASSWORD= get_secret('email_libras_password')
DEFAULT_FROM_EMAIL= str(EMAIL_HOST_USER)+"@sistemas.ufsc.br"
EMAIL_USE_SSL=True


import datetime
RECENTLY_ADDED_SIGNS_PERIOD = datetime.timedelta(days=90)
