set -U fish_greeting
set -gx SECRET_KEY 3^R8fXcd^wTy

# Actions
alias t="task"
alias ta="task add"
alias tr="task done"
alias tl="task list"
alias ci="vim $HOME/.config/i3/config"
alias cf="vim $HOME/.config/fish/config.fish"
alias cb="vim $HOME/.config/bspwm/bspwmrc"
alias cs="vim ~/.config/sxhkd/sxhkdrc"
alias cpb="vim ~/.config/polybar/config"
alias cpbl="vim ~/.config/polybar/launch.sh"
alias g="git"
alias gp="git push"
alias gc="git commit"
alias cv="vim ~/.vimrc"
alias nf="neofetch --ascii_distro arch --gtk2 off --gtk3 off"
alias autostart="sudo ln -s /usr/share/applications/$1.desktop /etc/xdg/autostart/"
alias se="ls /usr/share/applications/ | grep $1"
alias install="pikaur -S --noconfirm"
alias docker="sudo docker"
alias docker-compose="sudo docker-compose"
alias update="pikaur -Syu --noconfirm"
alias install="pikaur --noconfirm -S"
# Directory Movement
alias csca="$usb/School/CS140/Assignments"
alias csja="$usb/School/CS105/Assignments"
alias d="$HOME/Downloads"
alias dc="$HOME/Documents"

alias p="$HOME/Pictures"
