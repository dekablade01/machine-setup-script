
echo 'export PATH="$PATH:`pwd`/.flutter/bin"' >> ~/.zshrc
echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' >> ~/.zshrc

brew tap dart-lang/dart && brew install dart

curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.10.5-stable.zip && \

unzip flutter_macos_arm64_3.10.5-stable.zip -d ~/ && \

mv ~/flutter ~/".flutter"