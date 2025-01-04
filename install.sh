sudo dnf copr enable solopasha/hyprland -y
sudo dnf copr enable atim/lazygit -y
sudo dnf copr enable pgdev/ghostty -y
sudo dnf update
sudo dnf install hyprland vifm qt6ct wofi zsh hyprshot grim slurp dunst fzf ripgrep lazygit composer ghostty adw-gtk3-theme neovim openconnect hyprlock hyprpaper waypaper waybar
composer global require jetbrains/phpstorm-stubs
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.config/zsh/plugins/zsh-syntax-highlighting
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cp -r .config/* ~/.config/
cp .zshrc ~/
cp .zshenv ~/
cp -r .vifm/ ~/
cp .gitconfig ~/
cp .gitignore ~/
cp .ssh/* ~/.ssh
cp -r .local/share/fonts/* ~/.local/share/fonts/
fc-cache -v
