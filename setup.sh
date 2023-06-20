# Example usage
# open_new_terminal "ls -l"

open_new_terminal() {
  local command="$1"
  osascript -e "tell app \"Terminal\" to do script with command \"$command\""
}

echo '\n' >> ~/.zshrc
echo 'zstyle ":omz:update" mode auto' >> ~/.zshrc

echo '\n' >> ~/.zshrc
echo 'export LC_ALL=en_US.UTF-8' >> ~/.zshrc
echo 'export LANG=en_US.UTF-8' >> ~/.zshrc

echo 'export XCODE_INSTALL_USER=""' >> ~/.zshrc
echo 'export XCODE_INSTALL_PASSWORD=""' >> ~/.zshrc
echo 'export SPACESHIP_SKIP_2FA_UPGRADE=""' >> ~/.zshrc
echo 'export MATCH_PASSWORD=""' >> ~/.zshrc

softwareupdate --install-rosetta --agree-to-license

echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

open_new_terminal "sh $(pwd)/install_brews.sh"
open_new_terminal "sh $(pwd)/setup_oh_my_zsh.sh"
open_new_terminal "sh $(pwd)/setup_node.sh"
open_new_terminal "sh $(pwd)/setup_ruby.sh"
open_new_terminal "sh $(pwd)/setup_antigen.sh"
open_new_terminal "sh $(pwd)/install_flutter.sh"

