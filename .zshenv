function lock {
	swaylock --color 101010 --image ~/Downloads/background.jpg
}
function pwroff {
	waylogout --poweroff-command "shutdown now" -S --lock-command lock --reboot-command reboot

"zsh -c 'source ~/.zshrc && lock'"}
