#!/bin/bash

# Retrieve the URL from the clipboard using xclip
url=$(xclip -selection clipboard -o)
music_path = $(~/Media/Music/)
yt-dlp -x -f mp4 -P ~/Media/Music/ -o '%(title)s.%(ext)s' $url
