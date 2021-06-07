# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# install plugins for oh-my-zsh
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '/plugins=(/ s/(/(zsh-autosuggestions /' ~/.zshrc
# sed -i '/plugins=(/ s/(/(\
# zsh-autosuggestions\
# /' ~/.zshrc
echo "bindkey '+' autosuggest-accept" >> ~/.zshrc
source ~/.zshrc

