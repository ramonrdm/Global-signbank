import os

def get_secret(secret_name):
  try:
    with open('/run/secrets/{0}'.format(secret_name), 'r') as secret_file:
        return secret_file.read()
  except IOError:
    return None

sshfs = get_secret("sign_bank_command_sshfs_images")
sshfs2 = get_secret("sign_bank_command_sshfs_videos")

os.system(sshfs)
os.system(sshfs2)
