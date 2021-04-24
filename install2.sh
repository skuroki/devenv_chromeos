sudo apt update

items=(
  "screen"
  "gnome-terminal"
  "zsh"
  "neovim"
  "peco"
)
for item in "${items[@]}" ; do
  sudo apt install -y ${item}
done

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

sudo chsh $USER -s $(which zsh)

cd $HOME
rm -rf .oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git config --global user.email "shinsukekuroki@gmail.com"
git config --global user.name "Shinsuke KUROKI"

cd $HOME
rm -rf dotfiles
git clone git@github.com:skuroki/dotfiles.git
cd dotfiles
# FIXME: install.shのあとのコマンドが実行されない
./install.sh
