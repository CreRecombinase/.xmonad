feh --bg-scale /usr/share/backgrounds/gnome/Icescape.jpg &
#echo "pointer = 1 2 3 5 4 7 6 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"
xrdb -merge .Xresources
urxvt &
dropbox &
xmonad
