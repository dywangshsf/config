# Install zsh package
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
#
rm .vimrc .screenrc .vim .bash_aliases

ln -s ~/config/vimrc .vimrc
ln -s ~/config/zshrc .zshrc
ln -s ~/config/screenrc .screenrc
ln -s ~/config/bash_aliases .bash_aliases
ln -s ~/config/tmux.conf .tmux.conf
ln -s ~/config/tmux.conf.local .tmux.conf.local
