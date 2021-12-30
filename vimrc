filetype off
inoremap <C-q> <ESC> :q!<CR>
inoremap <C-j> <left>
nnoremap <C-i> <Up>
nnoremap <C-k> <Down>
nnoremap <C-j> <left>
nnoremap <C-l> <Right>
inoremap <C-k> <Down>
inoremap <C-i> <Up>
inoremap <C-l> <Right>
inoremap <C-w> <Esc>:w :q <CR>
nnoremap <c-q> :q! <CR>
nnoremap <C-S-Up> :m-2<CR>
nnoremap <C-S-Down> :m+<CR>
inoremap <C-S-Up> <Esc>:m-2<CR>
map <C-f> /
vnoremap <S-Tab> <
vnoremap <Tab> >
vmap <C-m> gc
vmap <C-w> S
nnoremap <Cr> :noh<cr>
vnoremap <S-Down> :m '>+1<CR>gv=gv
inoremap <c-p> <End>
inoremap<c-o> <S-^>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l
vnoremap <c-s> <Esc>:w<CR>
vnoremap <S-Up> :m '<-2<CR>gv=gv
imap <C-a><Esc> ggVG
nnoremap <C-a> ggVG
nnoremap <C-v> p
autocmd TextChanged,TextChangedI <buffer> silent write

"Compile Python
autocmd FileType python map <buffer> <F9> <Esc>:!clear;python %<CR>
autocmd FileType python imap <buffer> <F9> <Esc>:!clear;python %<CR>
" autocmd vimEnter *.cpp map <F9> :!clear; xterm -T '' -fa 'Monospace' -fs 10 -e 'g++ -Wall -Werror -Wextra -g % -o %:r && ./%:r && echo &&  echo Press ENTER to continue &&  read line  && exit'<CR><CR>

" Compile CPP
autocmd vimEnter *.cpp imap <buffer> <F9> <Esc> :!clear; xterm -T '%:r' -fa 'Monospace' -fs 10 -e 'g++ -g % -o %:r && 'cb_console_runner' './%:r''<CR><CR>
autocmd vimEnter *.cpp map <buffer> <F9> :!clear; xterm -T '%:r' -fa 'Monospace' -fs 10 -e 'g++ -g % -o %:r && 'cb_console_runner' './%:r''<CR><CR>


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tibabit/vim-templates'
Plugin 'scrooloose/syntastic'
Plugin 'AutoComplPop'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jacoborus/tender.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'
Plugin 'colors'


call vundle#end()


if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.
set autoindent
set scrolloff=5
set cursorline
set backspace=indent,eol,start
set complete-=i
set ignorecase
set smartcase
set showmatch
set showmode
set noignorecase
set smarttab
set nrformats-=octal
set shiftround
set ttimeout
set ttimeoutlen=50
set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu
set autoread
set t_Co=256
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list
set termguicolors
set number
set hlsearch
set ignorecase
set smartcase
set hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac
set number relativenumber
set complete+=kspell
set completeopt=menuone,longest,preview
set clipboard=unnamedplus
if has('mouse')
  set mouse=a
endif
" NERDTree
nnoremap <S-n> :NERDTreeToggle<CR>

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

"Template
let g:tmpl_author_email = 'You@gmail.com'
let g:tmpl_author_name = 'Your Name'


" vim-airline
let g:airline_powerline_fonts = 1
let g:tcomment#replacements_xml={}
let g:airline_theme='tender'
let g:indentLine_char = '│'

" this machine config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

colorscheme molokai
set background=dark
highlight LineNr guifg=#90918b guibg=bg term=none
highlight Matchparen guifg=white guibg=red
highlight Error guifg=red guibg=bg
highlight SpellBad guifg=white guibg=red
highlight SignColumn term=none cterm=none guifg=black guibg=bg
