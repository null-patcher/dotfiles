sudo dnf copr enable solopasha/hyprland -y
sudo dnf copr enable atim/lazygit -y
sudo dnf update
sudo dnf install hyprland wofi zsh hyprshot grim slurp dunst fzf ripgrep lazygit composer alacritty tmux neovim openconnect hyprlock hyprpaper
composer global require jetbrains/phpstorm-stubs
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
cp -r .config/* ~/.config/
cp .tmux.conf ~/
cp .zshrc ~/
cp .gitconfig ~/
cp .gitignore ~/
cp .ssh/* ~/.ssh
cp -r .local/share/fonts/* ~/.local/share/fonts/
fc-cache -v
