#!/bin/zsh
echo "Currently installed"
code --list-extensions

echo "Updating with vscode-extensions.list"
cat vscode-extensions.list | xargs -L1 code --install-extension

