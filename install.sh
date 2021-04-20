#!/usr/bin/env bash -xe

ssh-keygen

echo -n 'Githubにキーを登録したらEnterを押してください'
read

items=(
  "rbenv"
  "screen"
  "gnome-terminal"
  "zsh"
  "neovim"
)
for item in "${items[@]}" ; do
  sudo apt install -y ${item}
done

sudo chsh $USER -s $(which zsh)

cd $HOME
rm -rf dotfiles
git clone git@github.com:skuroki/dotfiles.git
cd dotfiles
bash -x ./install.sh

cd $HOME
rm -rf .oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git config --global user.email "shinsukekuroki@gmail.com"
git config --global user.name "Shinsuke KUROKI"
