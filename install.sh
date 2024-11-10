sudo dnf copr enable solopasha/hyprland -y
sudo dnf copr enable atim/lazygit -y
sudo dnf update
sudo dnf install hyprland wofi waybar zsh hyprshot grim slurp dunst fzf ripgrep lazygit composer alacritty tmux neovim openconnect
cp -r .config/* ~/.config/
cp .tmux.conf ~/
cp .zshrc ~/
cp .gitconfig ~/
cp .gitignore ~/
cp .ssh/* ~/.ssh
cp -r .local/share/fonts/* ~/.local/share/fonts/
fc-cache -v
sudo fc-cache -v
