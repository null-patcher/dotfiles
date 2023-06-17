sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install zsh sway swaylock swayidle waybar neovim alacritty wl-clipboard clipman
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

