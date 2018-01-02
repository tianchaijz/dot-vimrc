#!/usr/bin/env bash

msg() { echo "--- $@" 1>&2; }
detail() { echo "    $@" 1>&2; }
symlink() {
    detail "$1 -> $2"
    ln -sf $1 $2
}

for i in git make vim; do
    command -v $i >/dev/null
    if [ $? -ne 0 ] ; then
        msg "Installer requires ${i}. Please install $i and try again."
        exit 1
    fi
done

endpath="$HOME/.tianchaijz-vim"
vimdir="$HOME/.vim"
plug=plug.vim
bundles=bundles.vim
pull_enable=true
pull_only=false
ycm_conf=.ycm_extra_conf.py

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

if [ ! -d $endpath/.vim ]; then
    mkdir $endpath/.vim
fi

msg "Creating symlinks"
symlink $endpath/.vim $vimdir
symlink $endpath/vimrc $HOME/.vimrc
symlink $endpath/$bundles $vimdir/$bundles
symlink $endpath/$plug $vimdir/$plug
symlink $endpath/$ycm_conf $vimdir/$ycm_conf

if [ ! -f $vimdir/autoload/plug.vim ]; then
    msg "Installing Plug"
    mkdir -p $vimdir/plugged
    mkdir -p $vimdir/autoload
    curl -fLo $vimdir/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
fi

msg "Installing plugins using Plug"
msg "It may take a bit of time, please wait ..."
vim -u $endpath/vimrc +PlugInstall +qall
msg "Install successful!"
