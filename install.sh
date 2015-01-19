#!/usr/bin/env bash

msg() { echo "--- $@" 1>&2; }
detail() { echo "	$@" 1>&2; }

for i in git make vim; do
    command -v $i >/dev/null
    if [ $? -ne 0 ] ; then
        msg "Installer requires ${i}. Please install $i and try again."
        exit 1
    fi
done

endpath="$HOME/.tianchaijz-vim"
vimdir="$HOME/.vim"

if [ ! -e $endpath/.git ]; then
    msg "Cloning tianchaijz/dot-vimrc"
    git clone https://github.com/tianchaijz/dot-vimrc.git $endpath
else
    msg "Existing installation detected"
    msg "Updating from tianchaijz/dot-vimrc"
    cd $endpath && git pull origin master
fi

if [ -e $vimdir/colors ]; then
    msg "Preserving color scheme files"
    cp -R $vimdir/colors $endpath/colors
fi

today=`date +%Y%m%d_%H%M%S`
msg "Backing up current vim config"
for i in $vimdir $HOME/.vimrc $HOME/.gvimrc; do
    if [ -e $i ]; then
        if [ ! -L $i ]; then
            mv $i $i.$today && detail "$i.$today"
        else
            rm -f $i
        fi
    fi
done

msg "Creating symlinks"
detail "~/vimrc -> $HOME/.vimrc"
detail "~/.vim   -> $HOME/.vim"
detail "~/bundles.vim -> $vimdir/bundles.vim"

ln -sf $endpath/vimrc $HOME/.vimrc
if [ ! -d $endpath/.vim/bundle ]; then
    mkdir -p $endpath/.vim/bundle
fi
ln -sf $endpath/.vim $vimdir
ln -sf $endpath/bundles.vim $vimdir/bundles.vim

if [ ! -e $vimdir/bundle/vundle ]; then
    msg "Installing Vundle"
    git clone http://github.com/gmarik/vundle.git $vimdir/bundle/vundle
fi

msg "Installing plugins using Vundle..."
vim -Es -u $endpath/vimrc +PluginInstall +qall
