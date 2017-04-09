" Vundle config
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Basic options
set autoindent
set showcmd
set visualbell
set ruler
set laststatus=2
set list
set listchars=tab:▸\ ,extends:❯,precedes:❮
set showbreak=↪
set splitbelow
set cursorline "to highlight the line under the cursor
set splitright
set shiftround
set title
set linebreak
set nu
" YouCompleteMe Config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Powerline Config
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Save when losing focus
au FocusLost * :silent! wall

" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>= "

" Tab settings
set tabstop=2
set shiftwidth=1
set softtabstop=2
set expandtab
set wrap
set textwidth=80
" Color scheme
syntax on
colorscheme solarized
set background=dark

" Searching :  Always keep the searched word
" in the center of the screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Moving to the end and start of the line.
" instead of default 0 and $ -> too tedious.
nnoremap H 0
nnoremap L $

" Search for visually selected text
" select the text using visual mode.
" then tap // to search for the text.
" then tap n for the next occurence.
vnoremap // y/<C-R>"<CR>

" Code folding
set foldlevelstart=0

" Change case. C-u when in normal mode.
" to toggle the case of a word. And leave.
" me in INSERT mode.
nnoremap <C-u> gU1w
inoremap <C-u> <esc>gU1wea
