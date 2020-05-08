" Theme plugins
Plug 'morhetz/gruvbox'
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocomplete
" Plug 'zxqfl/tabnine-vim'
Plug 'rking/ag.vim'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Productivity plugins
Plug 'tpope/vim-commentary'
Plug 'davidhalter/jedi-vim'
" Plug 'ervandew/supertab'
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabClosePreviewOnPopupClose = 1

" Plug 'tpope/vim-surround'
" Plug 'natebosch/vim-lsc'
" let g:lsc_server_commands = { 'python': 'pyls', 'rust': 'rustup run nightly rls' }

Plug '/usr/local/opt/fzf'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>a :Ag<CR>

" Text Search Plugin
Plug 'mileszs/ack.vim'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" File system explorer
Plug 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>

" Git plugins
Plug 'tpope/vim-fugitive'
" Plug 'jreybert/vimagit'

" Language plugins
Plug 'pangloss/vim-javascript'
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
Plug 'posva/vim-vue'
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 softtabstop=2   
autocmd FileType vue syntax sync fromstart

Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
let g:vimwiki_use_calendar = 1

Plug 'ledger/vim-ledger'
Plug 'pearofducks/ansible-vim'

" Distraction-free writing
Plug 'junegunn/goyo.vim'

" Formatting
Plug 'psf/black', { 'tag': '19.10b0' }
let g:black_virtualenv="~/.vim_black"


" Others
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'.'.git/'
nnoremap <F2> <ESC>:Ex<CR>
