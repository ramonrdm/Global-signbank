import socket
hostname = socket.gethostname()

ROOT = '/var/www/signbank/'

def get_secret(secret_name):
  try:
    with open('/run/secrets/{0}'.format(secret_name), 'r') as secret_file:
        return secret_file.read()
  except IOError:
    return None

BASE_DIR = ROOT+'repo/'
WRITABLE_FOLDER = ROOT+'writable/'

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
                      "NAME":"signbank",
                      "USER":"root",
                      "PASSWORD":"SenhaBoaMilGrau@@007",
                      "HOST": "localhost",
                      "PORT": "3306"
                  }
              }

# DATABASES = {'default':
#                 {
#                     'ENGINE': 'django.db.backends.sqlite3',
#                     'NAME': WRITABLE_FOLDER+'database/signbank.db',
#                 }
#             }


ADMINS = (('Admin', 'gustavo.borgesfr@gmail.com'))

# what do we call this signbank?
LANGUAGE_NAME = "Português Brasileiro"
COUNTRY_NAME = "Brazil"

#Influences which template and css folder are used
SIGNBANK_VERSION_CODE = 'global'

URL = ''

ALLOWED_HOSTS = ['localhost','127.0.0.1', "172.17.0.2", "signbank.libras.ufsc.br"]

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

FIELDS['main'] = ['useInstr','wordClass', 'localizacao', 'domhndsh','subhndsh']

FIELDS['phonology'] = ['handedness','handCh','relatArtic','locprim','locVirtObj',
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

ECV_FILE = WRITABLE_FOLDER+'ecv/ngt.ecv'
ECV_FOLDER = WRITABLE_FOLDER+'ecv'
ECV_SETTINGS = {
    'CV_ID': 'CNGT_RU-lexicon',
    'include_phonology_and_frequencies': True,

    # The order of languages matters as the first will
    # be treated as default by ELAN
    'languages': [
        {
          'id':'ptb',
          'description':"Os arquivos CV das glosas para o CNGT (RU)",
          'annottation_idgloss_fieldname': 'annotationidglosstranslation_pt',
          'attributes': {
            "LANG_DEF": "http://cdb.iso.org/lg/CDB-0013504-001",
            "LANG_ID":'ptb',
            "LANG_LABEL":"Portuguese (pt)"
          }
        },
        {
            'id': 'nld',
            'description': 'De glossen-CV voor het CNGT (RU)',
            'annotation_idgloss_fieldname': 'annotationidglosstranslation_nl',
            'attributes': {
                'LANG_DEF': 'http://cdb.iso.org/lg/CDB-00138580-001',
                'LANG_ID': 'nld',
                'LANG_LABEL': 'Dutch (nld)'
            }
        },
        {
            'id': 'eng',
            'description': 'The glosses CV for the CNGT (RU)',
            'annotation_idgloss_fieldname': 'annotationidglosstranslation_en',
            'attributes': {
                'LANG_DEF': 'http://cdb.iso.org/lg/CDB-00138502-001',
                'LANG_ID': 'eng',
                'LANG_LABEL': 'English (eng)'
            }
        },
    ]
}

GLOSS_VIDEO_DIRECTORY = 'glossvideo'
GLOSS_IMAGE_DIRECTORY = 'glossimage'
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

FFMPEG_PROGRAM = "avconv"
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

import datetime
RECENTLY_ADDED_SIGNS_PERIOD = datetime.timedelta(days=90)
