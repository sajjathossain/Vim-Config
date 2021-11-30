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
  Plug 'liuchengxu/vim-which-key'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "Plug 'tsony-tsonev/nerdtree-git-plugin' "could not install
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ivo-donchev/goto-definition-plugin-for-react'
  Plug 'APZelos/blamer.nvim'
  " Plug 'akinsho/toggleterm.nvim'
  Plug 'haya14busa/is.vim'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'tpope/vim-commentary'
  " On-demand lazy load
  " Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

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
  "Plug 'SirVer/ultisnips'
  Plug 'mg979/vim-visual-multi'

call plug#end()

set t_Co=256
syntax on
"Available themes: Nord | Onedark | Gruvbox | Dracula"
colorscheme gruvbox

nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
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
" quit all and exit vim
nnoremap <leader>qQ :qa<CR>
"open window in vspilt"
nnoremap <leader>wv :vsplit<CR>
"open window in hspilt"
nnoremap <leader>wh :split<CR>
" replace word in whole file (greedy)
nnoremap <leader>rf :%s///g<Left><Left>
" replace word in whole file (greedy confirm)
nnoremap <leader>rF :%s///gc<Left><Left><Left>
" replace word only highlighted (greedy)
xnoremap <leader>rf :s///g<Left><Left>
" replace word in whole file (greedy confirm)
xnoremap <leader>rF :s///gc<Left><Left><Left>
" Open terminal at the bottom
" map <leader>t :bo 25sp | term<CR>
" nnoremap <leader>tt :bo 10sp | :term <CR>

" FZF key bindings
" search files
nnoremap <leader>ff :Files<CR>
" search files using regex
nnoremap <leader>fF :Rg<CR>
" search in project directory
nnoremap <leader>sp :Lines<CR>
" search in current buffer
nnoremap <leader>sb :BLines<CR>
" list all buffers 
nnoremap <leader>bb :Buffers<CR>
" go to next buffer
nnoremap <leader>bn :bnext<CR>
" go to next buffer
nnoremap <leader>bp :bprevious<CR>
" go to next buffer
nnoremap <leader>bd :bdelete<CR>
" exclude node_modules for fuzzy search (add this into the .bashrc/.zshrc file)
" export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,.next/*,~/.config/nvim/plugged/*,.idea/*,.vscode/*}"'


" activate codi 
" nnoremap <C-l> :Codi<CR>

" Vim tab configurations
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>tq :tabclose<CR>
nnoremap <leader>tl :tabs<CR>

" go to defination for react
nnoremap <leader>gd :call ReactGotoDef()<CR>

" vim-commentary
nnoremap <M-/> :Commentary<Left><CR>

" coc configurations
"nmap <leader>gd <Plug>(coc-defination)
"nmap <leader>gi <Plug>(coc-implementation)
"nmap <leader>gr <Plug>(coc-refferences)

" swich vim colorscheme
map <F1> :colorscheme dracula<CR>
map <F2> :colorscheme nord<CR>
map <F3> :colorscheme onedark<CR>
map <F4> :colorscheme gruvbox<CR>

" vim airline configurations
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
" let g:airline_statusline_ontop=1
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
" imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)


" tabline configs
" let g:tablineclosebutton=1

" nerdtree configs
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusConcealBrackets = 0 " default: 0
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" nerdtree extension color
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" vim snippets
"let g:UltiSnipsExpandTrigger="<tab>"
" git blammer config
let g:blamer_enabled = 1
let g:blamer_delay = 250
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '
  "let g:blamer_template = '<committer> <summary>'
  "highlight Blamer guifg=lightgrey

" toggle terminal
" nnoremap <leader>tt :ToggleTerm<CR>
" let g:toggleterm_terminal_mapping = '<C-t>'
" let g:ToggleTerm size=40 direction=horizontal

