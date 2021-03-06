
# remap prefix to Control + a
set -g prefix C-a
bind-key a send-prefix

unbind %
bind - split-window -v

unbind '"'
bind | split-window -h

set -g terminal-overrides 'xterm*:smcup@:rmcup@'

set-window-option -g automatic-rename off
set-option -g allow-rename off
set-window-option -g aggressive-resize on

set -sg escape-time 0

set -g base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on

bind c new-window
bind g split-window
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind r source-file ~/.tmux.conf \; display "Reloaded configuration."
set -g default-terminal screen-256color
set -g message-bg colour0
set -g message-fg colour12

set -g pane-active-border-fg magenta
set -g pane-active-border-bg default
set -g pane-border-fg blue

setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr dim
setw -g window-status-current-fg green
setw -g window-status-current-bg red
setw -g window-status-current-attr bright
setw -g window-status-activity-bg magenta
setw -g window-status-activity-fg colour0
setw -g window-status-bell-bg magenta
setw -g window-status-bell-fg default

set -g window-status-current-format '#W'
set -g window-status-format '#W'

set -g status-bg colour0
set -g status-fg colour12
set -g status-interval 1
set -g status-left ""
set -g status-left-length 0
set -g status-right "%B %d, %Y | %R:%S | #(/usr/local/bin/battery -t)"
set -g status-right-length 50
set -g status-position top
set -g status-utf8 on
set -g utf8 on
set -sg escape-time 0
set -sg repeat-time 600
set-window-option -g window-status-separator "  "
setw -g monitor-activity on

unbind C-f
unbind x

# List of plugins
 set -g @plugin 'tmux-plugins/tpm'
#set -g @plugin 'tmux-plugins/tmux-sensible'

 # Other examples:
 # set -g @plugin 'github_username/plugin_name'
 # set -g @plugin 'git@github.com/user/plugin'
 # set -g @plugin 'git@bitbucket.com/user/plugin'
set -g @plugin 'tmux-plugins/tmux-battery'
 # Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
 run '~/.tmux/plugins/tpm/tpm'
