#Script for Youtube downloading and ffmpeg processing
#! /bin/sh

#To populate on Apache
cd /srv/http/safelogin

#Passing arguments for the URL for download and email address
url1=$1
email1=$2

#my_email is my default email address.
my_email="srayanguhathakurta@yahoo.com"

#Making directory for email sender on Server and moving to the directory for file creation
mkdir -p $email1
cd $email1


#File download command
youtube-dl -o "%(title)s. %(ext)s" --extract-audio --audio-format "mp3" --audio-quality "160k" $url1

#This ensures that I do not get any system emails on my default email address (I am already getting them on my gmail--
#so this is redundant)
if [ $email1 == "$my_email" ]; then
        echo "Completed"
else
        echo "You can download the song from www.wrickplugged.tk
        Username: pink
        Password: floyd

        The file would be placed in a folder named after your email address

        Here is the URL you had requested - " $url1 | mutt -s "Transcode complete Pirate!" -c mavewrick@gmail.com -- $email1

fi
~                                                                                                                                                                                  
~                                                                                                                                                                                  
~  
