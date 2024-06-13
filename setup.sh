#!/bin/bash

git clone https://github.com/camertron/dotfiles.git ~/dotfiles

cat <<'EOF' >> ~/.bashrc

for file in ~/.bash_profile_includes/*.sh; do
  [[ -r $file ]] && source $file;
done
EOF

cp -r ~/dotfiles/.bash_profile_includes/ ~/
cp ~/dotfiles/.gitconfig ~/

source ~/.bashrc
