# settings

neovim: ~/.config/nvim/init.vim
run:

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

run nvim
:PlugInstall
:UpdateRemotePlugins
:q!
