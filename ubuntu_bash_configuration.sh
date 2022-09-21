# install for build
sudo apt-get install -y build-essential cmake
sudo apt-get install -y git htop vim

# bashrc
msg="parse_git_branch() {\n  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'\n}\ncolor_prompt=yes\nPS1='\[\033[0;36m\](\$(basename \$CONDA_DEFAULT_ENV)) ';\nif [ '$color_prompt' = yes ]; then\n  PS1+='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[00;33m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '\nelse\n  PS1+='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '\nfi\nalias tmux='TERM=xterm-256color tmux -2'\nexport CUDA_HOME=/usr/local/cuda\nexport PATH=$PATH:$CUDA_HOME/bin\nexport LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/$CUDA_HOME/lib64\n"
echo msg >> .bashrc

# vim
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv .vimrc ~/.vimrc
vim +PluginInstall +qall

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
conda init

# path
PATH=${PWD}/miniconda3:${PWD}/miniconda3/condabin:${PATH}
echo "PATH=${PWD}/miniconda3:${PWD}/miniconda3/condabin:${PATH}" >> .bashrc
