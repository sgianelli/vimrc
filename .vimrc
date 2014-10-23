syntax on
set nu
set ruler
set modeline
au BufReadPost *.xm set syntax=objc
au BufReadPost *.md set syntax=markdown
filetype plugin on
filetype indent plugin on

" Python settings
au FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4
au FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
" set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

map <C-E> :NERDTree<CR>
map <C-X> :NERDTreeClose<CR>
map <C-W><C-E> <C-W>W

map <C-B> :w<CR>
map <C-A> :wa<CR>

command Q q
command W w

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Syntastic
call pathogen#infect()

" Basic .vimrc to make vim more usable
" install it by copying it into vim and typing
" :sav $HOME/.vimrc
" :so %
" (don't type the "'s they are comment symbols)

" not necessary unless you install pathogen
"filetype off
"call pathogen#infect()        " PATHOGEN om nom nom
"filetype plugin indent on     " load file type plugins + indentation

set nocompatible              " give me vim, not vi
set modelines=0               " no exploits plox

set shiftround                " round my spaces to a multiple of shiftwidth

set showcmd                   " display incomplete commands

set encoding=utf-8            " encoding of the people
set scrolloff=3               " start scrolling before I hit the bottom
set autoindent                " give me some indent
set smartindent               " make good indentation choices
set showmode                  " tell me what mode I'm working in
set showcmd                   " tells us useful thing about what we are doing
set hidden                    " lets us know about all buffers
set wildmenu                  " show us all completions
set wildmode=list:longest
set ttyfast                   " fast terminal = moar characters sent
set ruler                     " show line and column of current position
set backspace=indent,eol,start  " delete anything
set laststatus=2                " always have a status line
set relativenumber            " show line numbers relative to the current line
set undofile                  " make my undos persistent

let mapleader = ","     " make , the <leader> instead of \
                        " leader is useful for custom commands

"sane regexes, like perl and python
nnoremap / /\v
vnoremap / /\v

set ignorecase  " ignore case when searching
set smartcase   " unless I mix case
set gdefault    " replace everything on a line by default
set incsearch   " search incrementally
set hlsearch    " highlight search matches
set showmatch   " jump to matching brackets

"clear out highlighting by hitting ', '
nnoremap <leader><space> :noh<cr>

"make tab match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

set wrap              " wrap lines
set textwidth=79      " max width is 79 characters
set formatoptions=qrn1 " r = insert comment character,
                       " q = format comments with gq,
                       " n1 = recognize formatted lists
"set colorcolumn=+1     " highlight the column after textwidth
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=yellow guibg=yellow
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"call matchadd('ErrorMsg', '\%>79v.\+')

" fix file lines vs. editor lines
nnoremap j gj
nnoremap k gk

syntax enable     " enable syntax highlighting

" use ; for commands instead of :
nnoremap ; :

au FocusLost * :wa    " save on losing focus

" ,W strips trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" jj for escape
inoremap jj <ESC>

" nothing should beep or flash
set noeb vb t_vb=

set rtp+=~/powerline/powerline/bindings/vim

fixdel   " makes the delete key work better

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
