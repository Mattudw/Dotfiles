xrdb -merge ~/.Xresources
setxkbmap fr
compton --config ~/compton.conf -b &
feh --bg-scale ~/Pictures/background.jpg &
exec i3
