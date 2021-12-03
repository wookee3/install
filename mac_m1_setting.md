# 새 노트북을 세팅하자
```
# install brew
/bin/sh -c "$(curl -fsSL https://gist.githubusercontent.com/dalinaum/85cd0806d0d23272bc42a44375d19fbf/raw/7a198d0b90b70031ff0892c028e47a8abcf82f73/m1-homebrew.sh)"

# install git
brew install git

# install iterm2
brew install iterm2

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
# terminal 꾸미기
# color theme - tokyo-night
# download https://github.com/enkia/tokyo-night-vscode-theme/blob/master/tokyo-night.itermcolors
# import and apply color theme in iterm2 - https://ooeunz.tistory.com/21
# syntax hightlightinh
brew install zsh-syntax-highlighting
# put below command in .zshrc
source /usr/local/m1-homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
