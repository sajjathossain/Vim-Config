set nu
set mouse=a 
set tabstop=2 shiftwidth=2 expandtab
set noswapfile
set nobackup

call plug#begin('~/.config/nvim/plugged')

	" theme & plugins
  Plug 'joshdick/onedark.vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'

  " language
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }  
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-css', 'coc-emmet', 'coc-eslint', 'coc-explorer', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tabnine', 'coc-tsserver', 'coc-git', 'coc-tailwindcss' ]
  Plug 'ryanoasis/vim-devicons'
  Plug 'ap/vim-css-color'
  Plug 'morhetz/gruvbox'
  Plug 'crusoexia/vim-dracula'
  Plug 'honza/vim-snippets'

call plug#end()

set t_Co=256
syntax on
"Available themes: Nord | Onedark | Gruvbox | Dracula"
colorscheme dracula

nnoremap <SPACE> <Nop>
let mapleader=" "
" custom keybindings
"
" nerdtree configurations
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" some vim commands
" save file
nnoremap <leader>fs :w<CR>
" save and quit
nnoremap <leader>qs :wq<CR>
" quit without saving
nnoremap <leader>qq :q!<CR>
"open window in vspilt"
nnoremap <leader>wv :vsplit<CR>
"open window in hspilt"
nnoremap <leader>wh :split<CR>

" FZF key bindings
" search files
nnoremap <leader>ff :Files<CR>
" search in project directory
nnoremap <leader>sp :Lines<CR>
" search in current buffer
nnoremap <leader>sb :BLines<CR>
" search buffers 
nnoremap <leader>bb :Buffers<CR>
" activate codi 
nnoremap <C-l> :Codi<CR>


" vim airline configurations
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_statusline_ontop=1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Fzf"
""let g:fzf_layout = {"down": "40%"}

" Coc configs
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
