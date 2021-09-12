#! /usr/bin/bash

# check if curl is available, if not, install it
if ! (curl --version &>> /dev/null); then
  sudo apt install curl -y
  echo "install curl done!"
fi

# check if zsh is available, if not, install it
if ! (zsh --version &>>/dev/null); then
  sudo apt install zsh -y
  echo "install zsh done!"
fi

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# set theme to af-magic
sed -i 's/^\s*ZSH_THEME=.*$/ZSH_THEME="af-magic"/' ~/.zshrc


# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add zsh-autosuggestions
sed -i 's/^\s*plugins=.*$/plugins=(git zsh-autosuggestions)/' ~/.zshrc

echo ""
echo "!!!Note:"
echo "Please logout and re-login to take effect!!!"
echo "=============== Setup zsh Done! ============"
