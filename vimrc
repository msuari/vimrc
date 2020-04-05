"{{{ ======= Prepend Options =======
" Set no compatible, for boosting Vim's capabilities
set nocompatible

" Load Plug plugin
call plug#begin('~/.vim/plugged')
source ~/.vim/plugins.vim
call plug#end()

"}}}

"{{{ ======= General Options =======
" Show numbers by default
set number

" Repair wired terminal/vim settings
set backspace=start,eol,indent

" Syntax on/off
syntax on

" Enable plugins
filetype on
filetype plugin on

" Status line - Using powerline plugin
set laststatus=2

" Languages
set spelllang=ca,en,es

" Colorscheme
set background=dark
colorscheme gruvbox

" Setting up Omnifunction
"set omnifunc=

" Unset Swap File
set noswapfile

" Highlighted search results
set hlsearch

" Incremental searching
set incsearch

" Case insensitive searches
set ignorecase

" Change the background colour from cursor line
set cursorline

" Let scroll Vim using the mouse.
set mouse=nicr

" Editing crontab from vim.
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" Templates for programming
source $HOME/.vim/abbreviations.vim

" Encryption type.
"set cm=blowfish

" Disable the annoying error bells.
set noerrorbells visualbell t_vb=

" Allow to change buffer without saving it
set hidden

" Spell URL
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

"}}}

"{{{ ======= Coding Options =======
" Set default indention
set tabstop=4
set shiftwidth=4

" Auto expand tabs to spaces
set expandtab

" Auto indent after a {
set smartindent
set autoindent

" Show matching brackets
set showmatch

" Do not wrap lines automatically
set nowrap

" Jump 5 lines when running out of the screen
set scrolljump=5

" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=10

" Folding options
set foldmethod=marker
set foldmarker={{{,}}}

" Show end-of-line whitespaces
set list
set listchars=trail:·

"}}}

"{{{ ======= Mappings =======
" Toggle Folding
nnoremap <space> za

" Set C-Right and C-Left
map <ESC>[5C <C-Right>
map <ESC>[5D <C-Left>

" Moving along buffers
nnoremap <C-right> <ESC>:bn<CR>
nnoremap <C-left> <ESC>:bp<CR>

" Moving along buffers (vim way)
nnoremap <C-l> <ESC>:bn<CR>
nnoremap <C-h> <ESC>:bp<CR>

" Fix for NeoVIM
if has('nvim')
    nnoremap <BS> <ESC>:bp<CR>
endif

" Editing Source/Include files - Prevent the exit if an error occurs
map gf :edit <cfile><CR>

" FX Functions
map <F1> <nop>
map <F12> <ESC>:help

" Scroll the other window in a Split
nmap <A-j> <C-w>W<C-e><C-w><C-w>W<C-e><C-w>W
nmap <A-k> <C-w>W<C-e><C-w><C-w>W<C-y><C-w>W

" Disable arrow keys to force the hands on hjkl
let vimpureta=0
if vimpureta
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>
    nnoremap <C-right> <nop>
    nnoremap <C-left> <nop>
endif

" \p \N to get pdb break points
nnoremap <leader>p Oimport pudb; pudb.set_trace()<Esc>
nnoremap <leader>d Oimport json; print json.dumps(, indent=4)<Esc>
nnoremap <leader>N Ofrom nose.tools import set_trace; set_trace()<Esc>
"
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move to beginning of the line
map 0 ^

" Avoid ESC key
" imap jk <Esc>
"}}}

" Search engine word
nnoremap <Leader>k :Ack! "<cword>" <CR>

"{{{ ======= Highlights =======
" Cursor Highlights
highlight clear CursorLine SpellBad Cursor
highlight CursorLine guibg=lightblue ctermbg=238
highlight SpellBad ctermbg=red term=bold
highlight Cursor ctermbg=235

" Highlight after the 80th column - this line should be highlighted after the character defined below
highlight clear OverLength
highlight OverLength ctermbg=88 ctermfg=white guibg=#592929

" <- Highlight non-ascii characters
highlight nonascii guibg=#B398CC ctermbg=54

"}}}

"{{{ ======= Code Style: Language Specific Settings =======
" ===== General and filetypes ====
" Highlight nonascii characters
autocmd BufWrite,BufRead,BufNewFile * 2match nonascii "[^\x00-\x7F]"
" Setting phtml as html filetype
autocmd BufNewFile,BufRead *.phtml set filetype=html
" Setting Arduino filetype as C
autocmd BufNewFile,BufRead *.ino set filetype=arduino
" Set rust filetype
autocmd BufRead,BufNewFile *.rs set filetype=rust
" Setting golang as filetype
autocmd BufNewFile,BufRead *.go set filetype=Go

" ===== JavaScript =====
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" Highlight after 80th character
autocmd FileType javascript match OverLength /\%120v.\+/

" ===== HTML / CSS / JS =====
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2    

" ===== Python =====
" Disable smartindent on # comments.
autocmd FileType python inoremap # X#
" Highlight after 80th character
autocmd FileType python match OverLength /\%80v.\+/

" ===== Markdown =====
" Highlight after the 110th column on markdown
autocmd FileType markdown match OverLength /\%110v.\+/
" New line after 110th character
autocmd FileType markdown set textwidth=109

" ===== Rust =====
" Highlight after 80th character
autocmd FileType rust match OverLength /\%80v.\+/

" ===== Vim =====
" Highlight after 80th character
autocmd FileType vim match OverLength /\%80v.\+/

"}}}
"

