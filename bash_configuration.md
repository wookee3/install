# color prompt setting
```
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

color_prompt=yes

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[00;33m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
```

# vimrc
install fonts for powerline - https://github.com/powerline/font
install fonts for terminal - D2coding
setup terminal font
```
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

flake install for syntax check
```
sudo pip3 install flake8
```

using vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
```

.vimrc configuration - solarized theme(dracula is bad), python syntax check, nerdtree, python autocomplete
ws10
```

```

install package
'''
:Plugin Install
'''

# bashrc for cuda
