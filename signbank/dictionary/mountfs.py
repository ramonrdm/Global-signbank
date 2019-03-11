import os

sshfs = get_secret("sshfs_glossimages")
sshfs2 = get_secret("sshfs_glossvideos")

os.system(sshfs)
os.system(sshfs2)
