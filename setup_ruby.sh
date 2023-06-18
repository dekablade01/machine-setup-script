# Example usage
# open_new_terminal "ls -l"

open_new_terminal() {
  local command="$1"
  osascript -e "tell app \"Terminal\" to do script with command \"$command\""
}

echo '\n' >> ~/.zshrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'export PATH=".rbenv/shims:$PATH"' >> ~/.zshrc

brew install rbenv
rbenv install 3.0.0
rbenv global 3.0.0

open_new_terminal "sh $(pwd)/install_xcode.sh"