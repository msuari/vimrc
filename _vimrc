" BUNDLE "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'davidhalter/jedi-vim'
Plugin 'posva/vim-vue'
Plugin 'pangloss/vim-javascript'
"" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" CUSTOM "
syntax enable

set background=dark
colorscheme solarized
" 
" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" set mouse
set mouse=a


" Custom keys

" \p \N to get pdb break points
nnoremap <leader>p Oimport pudb; pudb.set_trace()<Esc>       
nnoremap <leader>d Oimport json; print json.dumps(, indent=4)<Esc>       
nnoremap <leader>N Ofrom nose.tools import set_trace; set_trace()<Esc>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map 0 ^

"NERD Tree
map <C-n> :NERDTreeToggle<CR>

" toggle nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endi

" Highlight 80 characters

" ===== Python =====
highlight clear OverLength
highlight OverLength ctermbg=80 ctermfg=red guibg=#592929

" Disable smartindent on # comments.
autocmd FileType python inoremap # #

" Highlight after 80th character
autocmd FileType python match OverLength /\%80v.\+/
set cc=80
" NerdTree toggle
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endi


" ---------------------------------- "
" Configure YouCompleteMe
" ---------------------------------- "

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>

" highlight all search result
set hlsearch

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" tab config
autocmd FileType py setlocal shiftwidth=4 tabstop=4 softtabstop=4    
autocmd FileType html* setlocal shiftwidth=2 tabstop=2 softtabstop=2 
autocmd FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2    
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 softtabstop=2   

" vue vim
autocmd FileType vue syntax sync fromstart


" js vim
let g:javascript_plugin_jsdoc = 1
