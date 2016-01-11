#for urxvt daemon
xrdb -merge ~/.Xresources
urxvtd&

#initial terminal window
urxvt -e 'mux start conf' &

#initial chrome window
google-chrome&

#work chat stuff
scudcloud&
skype&

#start window manager
exec awesome
