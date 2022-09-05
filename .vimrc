set nocompatible
set encoding=utf-8
set t_Co=256
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-syntastic/syntastic'
Bundle 'nvie/vim-flake8'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'
Bundle 'RRethy/vim-illuminate'
Plugin 'tmhedberg/simpylfold'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" powerline setting
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extension#tabline#fnamemod=':t'
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols='fancy'
set fillchars+=stl:\ ,stlnc:\ 
set term=xterm-256color
set termencoding=utf-8

" nerdtree and nerdcommenter
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
map <F3> :NERDTree<CR>
let NERDSpaceDelims=0
let g:NERDCommentEmptyLines=1
" let g:NERDCommenter#NERDComAlignedComment="<C-///>"
map <C-M> <leader>cb
map <C-U> <leader>cu

" ctrlp
let g:ctrlp_custom_ignore={
  \ 'dir': '\.git$\|public$|log$|tmp$|vendor$',
  \ 'file': '\v\.(exe|so|dll|pyc)$'
  \ }
map <F2> :CtrlP<CR>

" indent guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd ctermbg=Grey
hi IndentGuidesEven ctermbg=LightGray

" python syntax check
" vim8 or neovim can use async plugin - will be changed in future
" vim-flake
let g:flake8_show_in_file=1
" syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1
let g:syntastic_quiet_messages={"type":"style"}
let g:syntastic_python_python_exec='~/anaconda3/envs/python36/bin/python3'
let python_hightlight_all=1

" python autocomplete
" jedi-vim or YouCompleteMe
" aync version deoplete-jedim
" let g:ycm_python_binary_path='/usr/bin/python3'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <C-B> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:jedi#force_py_version=3
let g:jedi#use_tabs_not_buffers=1
let g:jedi#popup_on_dot=0
let g:jedi#goto_command="<C-B>"
let g:jedi#usages_command="<C-N>"

set showtabline=2
set nu
set autoindent
set expandtab
set ts=4
set sw=4
