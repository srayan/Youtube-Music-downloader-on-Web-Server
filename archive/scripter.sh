#Script for Youtube downloading and ffmpeg processing
#! /bin/sh

#To populate on Apache
cd /srv/http/safelogin

#Passing arguments for the URL for download and email address
url1=$1
email1=$2


#Making directory for email sender on Server and moving to the directory for file creation
mkdir -p $email1
cd $email1


#File download command
youtube-dl -o "%(title)s. %(ext)s" --extract-audio --audio-format "mp3" --audio-quality "160k" $url1


echo "You can download the song from www.wrickplugged.tk
Username: pink
Password: floyd

The file would be placed in a folder named after your email address

Here is the URL you had requested - " $url1 | mutt -s "Transcode complete Pirate!" -c mavewrick@gmail.com -- $email1
