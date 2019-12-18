#!/bin/zsh

script_path=${0:a:h}

rm ~/.zshrc ~/.p10k.zsh

ln -s $script_path/.zshrc ~/.zshrc
ln -s $script_path/.p10k.zsh ~/.p10k.zsh