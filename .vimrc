" install vim-plugin
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" install plugins wihth :PlugInstall
" using vim-plugin
"

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'https://github.com/vim-airline/vim-airline.git'
" Plug 'tidalcycles/vim-tidal'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Plug 'tomlion/vim-solidity'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/tpope/vim-repeat.git'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'Chiel92/vim-autoformat'
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'


call plug#end()

" allow the filetype to load a plugin
" for tidalvim
" loads indent files for formatting according to language
filetype plugin on
filetype indent on

" color scheme
colorscheme afterglow

" enable syntax processing
syntax enable

" enable TAB when typing and reading a file
set tabstop=4
set softtabstop=4
set expandtab

" show line numbers
set number relativenumber

" highlight current line
set cursorline

" visual autocomplete menu
set wildmenu

" highlight matching parenthesis
set showmatch

" search as characters are entered
" highlight matches in search
" turn off highlighting with ,space
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" set leader
let mapleader=","

" remap nerd tree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

" nerd tree starts when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" syntastic always populates error list
let g:syntastic_always_populate_loc_list = 1

" syntastic checks for errors on load up
let g:syntastic_check_on_open = 1


" autoclose brackets
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" remap window navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" emmet redefine leader key
"let g:user_emmet_leader_key=','

" nerdtree shows hidden files by default
let g:NERDTreeShowHidden=1 

" no open window for youcompleteme
set completeopt-=preview   
