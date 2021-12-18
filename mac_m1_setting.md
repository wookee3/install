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

```
# vim 설치
# xcode 설치 및 실행을 한번 해야함
brew install macvim
or
git clone https://github.com/vim/vim.git
cd vim/src
./configure --with-features=huge --enable-python3interp
make
sudo make install

# .vimrc 설정을 기본에 내가 사용하던 것으로 수정
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

```
# node.js 설치
# install nvm
brew install nvm
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/m1-homebrew/opt/nvm/nvm.sh" ] && . "/usr/local/m1-homebrew/    opt/nvm/nvm.sh"
[ -s "/usr/local/m1-homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr    /local/m1-homebrew/opt/nvm/etc/bash_completion.d/nvm"

# install node.js
nvm install 16
```


