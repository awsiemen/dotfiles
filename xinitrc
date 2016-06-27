# Remapping of escape
xmodmap ~/.xmodmap

#for urxvt daemon
xrdb -merge ~/.Xresources
urxvtd&

#start gpg and ssh agents
eval $(ssh-agent)
#/home/andrew/scripts/gpg-agent.sh
eval $(gpg-agent --daemon)


#initial terminal window
#urxvt -e 'mux start conf' &

#initial chrome window
google-chrome&

#work chat stuff
scudcloud&
skype&

#bitlbee for facebook
bitlbee -D -i 127.0.0.1 -p 6667

#start window manager
exec awesome


