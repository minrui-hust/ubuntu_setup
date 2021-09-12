# install tmux first
sudo apt install tmux -y

# clone the tmux-config repo
mkdir -p ~/.config && cd ~/.config
git clone https://github.com/minrui-hust/tmux-config.git

# make soft link to config
ln -s ~/.config/tmux-config/tmux.conf ~/.tmux.conf

echo "Tmux config install done!"
