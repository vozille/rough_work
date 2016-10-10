# internet usage
vnstat

# disk usage
ncdu

# starts utorrent server at the location
utserver -settingspath /opt/utorrent-server-alpha-v3_3/

# alternate file browser
nautilus

# removes decrapated ppa's
sudo ./ppa-remove

# calender.. come on, lol
cal - calender

# Audio Editing
ffmpeg -i infile.mp4 -acodec copy outfile.aac
ffmpeg -i infile.mp4 -i denoised-audio.m4a -vcodec copy -acodec copy -map 0:0 -map 1:0 denoised-video.mp4
http://askubuntu.com/questions/391798/video-editing-app-for-lowering-background-noise-while-evidentiating-slow-voice
