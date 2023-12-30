#!/bin/bash

# Retrieve the URL from the clipboard using xclip
url=$(xclip -selection clipboard -o)

music_path="$HOME/Media/Music/"
music_path="${music_path/\~/$HOME}"

yt-dlp -x --audio-format mp3 -P "$music_path" -o '%(title)s.%(ext)s' "$url"
