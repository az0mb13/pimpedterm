curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
source .zshrc
source .p10k.zsh

chsh -s /usr/bin/zsh $(whoami)

echo "Reboot it plx"
