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
bundles=bundles.vim
pull_enable=true
pull_only=false

for arg in "$@"; do
    case $arg in
        --pull)
            pull_only=true
            shift
            ;;
        --nopull)
            pull_enable=false
            shift
            ;;
    esac
done

if $pull_enable; then
    if [ ! -e $endpath/.git ]; then
        msg "Cloning tianchaijz/dot-vimrc"
        git clone https://github.com/tianchaijz/dot-vimrc.git $endpath
    else
        msg "Existing installation detected"
        msg "Updating from tianchaijz/dot-vimrc"
        cd $endpath && git pull --rebase origin master
    fi

    if $pull_only; then
        exit 0
    fi
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
detail "$endpath/vimrc -> $HOME/.vimrc"
detail "$endpath/.vim   -> $HOME/.vim"
detail "$endpath/$bundles -> $vimdir/$bundles"

if [ ! -d $endpath/.vim/bundle ]; then
    mkdir -p $endpath/.vim/bundle
fi

ln -sf $endpath/vimrc $HOME/.vimrc
ln -sf $endpath/.vim $vimdir
ln -sf $endpath/$bundles $vimdir/$bundles

if [ ! -e $vimdir/bundle/vundle ]; then
    msg "Installing Vundle"
    git clone http://github.com/gmarik/vundle.git $vimdir/bundle/vundle
fi

msg "Installing plugins using Vundle"
msg "It may take a bit of time, please wait ..."
vim -Es -u $endpath/vimrc +PluginInstall +qall
