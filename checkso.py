import os
import subprocess
from subprocess import Popen
from checkLogical import listcancion
vlcpath = "D:/Todo/VideoLAN/VLC/vlc.exe"
randomlist = " ".join(listcancion)
v = subprocess.Popen([vlcpath, [randomlist]])
