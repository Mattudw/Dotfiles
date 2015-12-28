xrdb -merge ~/.Xresources
setxkbmap fr
compton --config ~/compton.conf -b &
feh --bg-scale ~/pics/background.png &
exec i3
