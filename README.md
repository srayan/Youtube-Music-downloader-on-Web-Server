Youtube-Music-downloader-on-Web-Server
======================================

The idea is to extract the audio stream from a music video off Youtube. 
It should also work for a few other video streaming websites.
The extracted audio will be mp3 encoded and will have 160k bit rate ~ so good quality!
Stripping out the Audio stream from a Youtube video (also several other video streaming sites) and making the file available on a secured web page.
Information about data access sent via secured email

While I had primarily made a script that would enable the user to download and extract the audio out of a media file downloaded from a Youtube link, this script is a notch higher.


Pre-requisites:
1. Apache server
2. SNMP server
3. youtube-dl binaries installed
4. ffmpeg binaries installed


Save the script as scripter.sh in /usr/local/bin
This will enable you to call the script from anywhere in the directory


As arguments, the following have to be passed onto the script: youtubeURL recipient email address

ex: $> sh scripter.sh https://www.youtube.com/watch?v=tPEE9ZwTmy0 recipient@emailaddress.com


The song will be created in a directory named after the email address on the portal.
The recipient can directly access it from there. 
In this version I have included a login / password combination. 
You will find this in the index.html file, placed in the /srv/http directory

New revision on 07-24-2014:
============================

When I am downloading songs for my account, using my email address, I do not want to get a completion acknowledgement email everytime (since I am already receiving it on my gmail). So mt script checks the email address passed as an argument, and if it is me, then it would just echo "Completed" on the command line and will not send any email!
