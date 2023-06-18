
curl -L git.io/antigen > $HOME/.antigen.zsh
echo 'source $HOME/.antigen.zsh\n' >> ~/.zshrc
echo 'antigen bundle zsh-users/zsh-autosuggestions\n' >> ~/.zshrc
echo 'antigen apply\n' >> ~/.zshrc