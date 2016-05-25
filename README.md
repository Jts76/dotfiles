Install on New Machine.
========================

Change directory to your home directory.
-----------------------------------------
cd ~
git clone https://github.com/Jts76/dotfiles.git

Create symbolic links to vim and bash config files.
---------------------------------------------------

ln -s ~/.dotfiles/vim ~/.vim

ln -s ~/.dotfiles/vimrc ~/.vimrc

ln -s ~/.dotfiles/gvimrc ~/.gvimrc

ln -s ~/.dotfiles/bashrc ~/.bashrc

ln -s ~/.dotfiles/bash_profile ~/.bash_profile


Pushing to github.
------------------

cd ~/.dotfiles
git init
git add .
git commit -m "Add Notes Here"
git push


