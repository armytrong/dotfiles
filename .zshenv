SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

function lock {
	swaylock --color 101010 --image ~/Downloads/background.jpg
}
function pwroff {
	waylogout --poweroff-command "shutdown now" -S --lock-command lock --reboot-command reboot

"zsh -c 'source ~/.zshrc && lock'"}

if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]; then
   /usr/bin/Hyprland
fi
