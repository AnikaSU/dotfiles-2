#!/bin/bash
# This scripts installs all conf files
# by creating appropriate symbolic links
# cron jobs are not included.

# aria2/
rm -rf "$HOME/.aria2"
mkdir -p "$HOME/.aria2/"
ln -sf "$PWD/aria2/aria2.conf" "$HOME/.aria2/aria2.conf"

# bash/
ln -sf "$PWD/bash/bashrc" "$HOME/.bashrc"

# bin/
ln -sf "$PWD/bin" "$HOME/.local/bin"

# git/
rm -rf "$HOME/.gitconfig"
rm -rf "$HOME/.gitignore"
ln -sf "$PWD/git/config" "$HOME/.gitconfig"
ln -sf "$PWD/git/ignore" "$HOME/.gitignore"
git config --global core.excludesfile '~/.gitignore'

# hg/
rm -rf "$HOME/.hg"
ln -sf "$PWD/hg/hgrc" "$HOME/.hg"

# tmux/
rm -rf "$HOME/.tmux"
rm -rf "$HOME/.tmux.conf"
ln -sf "$PWD/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -sf "$PWD/tmux/tmux.conf" "$HOME/.byobu/.tmux.conf"
ln -sf "$PWD/tmux" "$HOME/.tmux"

# vim/
rm -rf "$HOME/.vim"
ln -sf "$PWD/vim" "$HOME/.vim"
rm -f "$HOME/.vimrc"
ln -sf "$PWD/vim/vimrc" "$HOME/.vimrc"

# Zsh/
rm -rf "$HOME/.zsh"
ln -sf "$PWD/zsh" "$HOME/.zsh"
ln -sf "$PWD/zsh/prezto" "$HOME/.zprezto"
rm -f "$HOME/.zshrc"
ln -sf "$PWD/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/zsh/prezto/runcoms/zlogin" "$HOME/.zlogin"
ln -sf "$PWD/zsh/prezto/runcoms/zlogout" "$HOME/.zlogout"
ln -sf "$PWD/zsh/prezto/runcoms/zpreztorc" "$HOME/.zpreztorc"
ln -sf "$PWD/zsh/prezto/runcoms/zprofile" "$HOME/.zprofile"
ln -sf "$PWD/zsh/prezto/runcoms/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zsh/prezto/runcoms/zshrc" "$HOME/.zshrc"
