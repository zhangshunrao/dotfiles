rm -rf ~/.config/nvim
mkdir ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


wget https://github.com/gcanoxl/dotfiles/blob/master/neovim/init.vim ~/.config/nvim/init.vim
nvim +PlugInstall
