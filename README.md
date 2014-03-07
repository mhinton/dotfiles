# My Dotfiles #
This is my vim setup and assorted dotfiles.

## Steps to setup ##

- Clone this repo to .dotfiles
- git submodule init
- git submodule update
- ln -s .dotfiles/vim/vimrc .vimrc
- ln -s .dotfiles/zshrc .zshrc
- ln -s .dotfiles/oh-my-zsh .oh-my-zsh
- ln -s .dotfiles/pryrc .pryrc
- ln -s .dotfiles/railsrc .railsrc
- ln -s .dotfiles/gitconfig .gitconfig
- ln -s .dotfiles/inputrc .inputrc
- ln -s .dotfiles/tmux.conf .tmux.conf
- vim +BundleInstall!
