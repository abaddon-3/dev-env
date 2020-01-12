#!/bin/zsh

script_path=${0:a:h}

if [[ -a ~/.zshrc || -a ~/.p10k.zsh ]]; then
    rm ~/.zshrc ~/.p10k.zsh
fi

if [[ ! -a ~/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi


ln -s $script_path/.zshrc ~/.zshrc
ln -s $script_path/.p10k.zsh ~/.p10k.zsh

git config --global user.name daniel.greene
git config --global user.email knewimale@gmail.com