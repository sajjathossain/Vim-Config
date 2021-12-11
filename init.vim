" Basic Settings {{{
set number relativenumber
set autoindent
set encoding=UTF-8
set cursorline
set showcmd
" set showtabline
" set spelllang=en_us
" set spell
set mouse=a 
set tabstop=2 shiftwidth=2 expandtab
set noswapfile
set foldenable
set foldmethod=marker
set foldmarker={{{,}}}

"   set foldmethod=syntax
"   let javascript_fold=1
"   let typescript_fold=1
"   set foldcolumn=1 "defines 1 col at window left, to indicate folding
"   set foldlevelstart=99 "start file with all folds opened

set nobackup
set conceallevel=3
set guifont=FiraCode\ Nerd\ Font\ Medium\ 12

highlight Normal ctermbg=Black ctermfg=White cterm=NONE
highlight Comment cterm=italic
highlight CursorLine ctermbg=Black cterm=NONE 
highlight CursorLineNr ctermbg=Black cterm=bold ctermfg=Green
highlight SpellBad ctermfg=Red
highlight Folded ctermbg=Black ctermfg=White cterm=bold
" set guifont=Fira Code

"}}}

" Disable arrow keys {{{

" You could add this to your .vimrc to disable the arrow keys in Command, Insert, Normal and Visual Mode:

" Remove newbie crutches in Command Mode
" cnoremap <Down> <Nop>
" cnoremap <Left> <Nop>
" cnoremap <Right> <Nop>
" cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" }}}

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

  " Vim plugins
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'liuchengxu/vim-which-key'
  " Plug 'folke/which-key.nvim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "Plug 'tsony-tsonev/nerdtree-git-plugin' "could not install
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  " Plug 'ivo-donchev/goto-definition-plugin-for-react'
  Plug 'Ivo-Donchev/vim-react-goto-definition'
  Plug 'APZelos/blamer.nvim'
  " Plug 'akinsho/toggleterm.nvim'
  Plug 'haya14busa/is.vim'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'tpope/vim-commentary'
  Plug 'kdheepak/lazygit.nvim'
  Plug '907th/vim-auto-save'
  Plug 'rrethy/vim-illuminate'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'
  Plug 'easymotion/vim-easymotion'
  Plug 'nathanaelkane/vim-indent-guides'
  " Plug 'kien/rainbow_parentheses.vim'
  " Plug 'luochen1990/rainbow'
  Plug 'xiyaowong/nvim-transparent'
  Plug 'bling/vim-bufferline'
  Plug 'voldikss/vim-floaterm'
  
  "Themes"
  Plug 'arcticicestudio/nord-vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'challenger-deep-theme/vim', { 'as': 'challenger_deep' }
  Plug 'mhartington/oceanic-next', { 'as': 'oceanic_next'}
  Plug 'morhetz/gruvbox'
  Plug 'crusoexia/vim-dracula'
  Plug 'srcery-colors/srcery-vim'
  " On-demand lazy load
  " Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

  " language
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }  
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-css', 'coc-emmet', 'coc-eslint', 'coc-explorer', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tabnine', 'coc-tsserver', 'coc-git', 'coc-tailwindcss', 'coc-vimlsp' ]
  Plug 'ryanoasis/vim-devicons'
  Plug 'ap/vim-css-color'
  Plug 'honza/vim-snippets'
  Plug 'SirVer/ultisnips'
  Plug 'leafOfTree/vim-matchtag'
  Plug 'AndrewRadev/tagalong.vim'
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  " Plug 'nvim-treesitter/playground'

call plug#end()

" }}}

" Vim UI colorscheme setup {{{ 

"Available themes: nord | onedark | gruvbox | dracula | ayu |
" challenger_deep {love it} | OceanicNext {love it} | srcery
colorscheme srcery
set t_Co=256
syntax enable
set background=dark

if has('nvim') || has('termguicolors')
  set termguicolors
  let g:neovide_cursor_vfx_mode = "railgun"
endif

" }}}

" Switch colorscheme & colorscheme settings {{{
" swich vim colorscheme
nnoremap <F1> :colorscheme dracula<CR>
nnoremap <F2> :colorscheme nord<CR>
nnoremap <F3> :colorscheme onedark<CR>
nnoremap <F4> :colorscheme gruvbox<CR>
nnoremap <F5> :colorscheme ayu<CR>
nnoremap <F6> :colorscheme challenger_deep<CR>
nnoremap <F7> :colorscheme OceanicNext<CR>

" for ayu colorscheme
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"

" }}}

" Some vim commands, keyremaps and keybindings {{{
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <leader> :WhichKey'<Space>'<CR>

" Remap esc key and disable any action in insert mode
inoremap fj <Esc>
inoremap <Esc> <Nop>

" change window
nnoremap <leader>ww <C-w>w<CR>

" save file
nnoremap <leader>fs :w<CR>
" save and quit
nnoremap <leader>qs :wq<CR>
" quit without saving
nnoremap <leader>qq :q!<CR>
" quit all and exit vim
nnoremap <leader>qQ :qa<CR>
" Copy everything after the cursor 
nnoremap Y y$ <CR>
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
" replace word in whole file highlighted (greedy confirm)
xnoremap <leader>rF :s///gc<Left><Left><Left>
" Open terminal at the bottom
" map <leader>t :bo 25sp | term<CR>
" nnoremap <leader>tt :bo 10sp | :term <CR>

" Vim tab configurations
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>tq :tabclose<CR>
nnoremap <leader>tl :tabs<CR>

" Source nvim config file
nnoremap <leader>ss :source %<CR>

" Paste from clipboard
nnoremap <M-v> :set paste<CR>



" }}}

" FZF key bindings {{{
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

"Fzf"
" let g:fzf_layout = {"down": "55%"}
" let g:fzf_layout = {"up": "55%"}

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


" }}}

" Codi plugin setup {{{
" activate plugin 
" nnoremap <C-l> :Codi<CR>

" }}}

" Go to defination for react plugin {{{
noremap <leader>gd :call ReactGotoDef()<CR>

" }}}

" Vim-commentary {{{
nnoremap <M-/> :Commentary<Left><CR>

"}}}

" Lazygit {{{
nnoremap <silent><leader>gg :LazyGit<CR>
" }}}

" Coc configurations {{{
nnoremap <leader>gcd <Plug>(coc-defination)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-refferences)

" }}}

" Vim airline configurations {{{
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Airline 
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


" }}}

" Tabline configs {{{
" let g:tablineclosebutton=1
" }}}

" Nerdtree configs {{{
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
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " enable folder glyph flag
let g:webdevicons_conceal_nerdtree_brackets=1
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

let g:blamer_enabled = 1
let g:blamer_delay = 250
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '

"let g:blamer_template = '<committer> <summary>'
  "some colors: cadetblue | lightgray | darkslategray | lightslategray | mediumaquamarine | darkturquoise | deepskyblue | dodgerblue
highlight Blamer guifg=mediumaquamarine

" Nerdtree syntax highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Nerdtree file sync
" let g:nerdtree_sync_cursorline = 1
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeHighlightCursorline = 1


" let NERDTreeExtensionHighlightColor=orangered
let NERDTreeFileExtensionHighlightFullName=1
let NERDTreeShowHidden=1
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>



" }}}

" Toggle term plugin {{{
" toggle terminal
" nnoremap <leader>tt :ToggleTerm<CR>
" let g:toggleterm_terminal_mapping = '<C-t>'
" let g:ToggleTerm size=40 direction=horizontal

" }}}

" Lazygit {{{
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.90 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" }}}

" Vim auto save plugin {{{
let g:auto_save = 0
let g:auto_save_silent = 0
let g:auto_save_events = ["TextChanged"] "InsertLeave
" let g:auto_save_write_all_buffers = 1

" }}}

" Vim illuminate {{{
" Time in milliseconds (default 0)
let g:Illuminate_delay = 0
" Don't highlight word under cursor (default: 1)
let g:Illuminate_highlightUnderCursor = 1

" }}}

" Neovim GUI {{{

" Neovim change font size
if has("gui")
let s:fontsize = 14
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "guiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
endif
let g:Guifont="Fira Mono:h13"


" }}}

" Vim indent guide {{{
" let g:indent_guides_enable_on_vim_startup = 1

" }}}

" Highlight parenthesis {{{
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
    " \ ['Darkblue',    'SeaGreen3'],
    " \ ['darkgray',    'DarkOrchid3'],
    " \ ['darkgreen',   'firebrick3'],
    " \ ['darkcyan',    'RoyalBlue3'],
    " \ ['darkred',     'SeaGreen3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['brown',       'firebrick3'],
    " \ ['gray',        'RoyalBlue3'],
    " \ ['black',       'SeaGreen3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['Darkblue',    'firebrick3'],
    " \ ['darkgreen',   'RoyalBlue3'],
    " \ ['darkcyan',    'SeaGreen3'],
    " \ ['darkred',     'DarkOrchid3'],
    " \ ['red',         'firebrick3'],
    " \ ]

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Highlight matching tag (begin/end)
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,*.vue,*.svelte,*.jsp,*.php,*.erb'
" }}}

" Utils snippets {{{
"let g:UltiSnipsExpandTrigger="<tab>"
" git blammer config
"
" }}}

" Treesitter {{{
" let g:TSBufEnable
" }}}

" nvim transparent {{{
" let g:transparent_enabled = v:true
" }}}

" FLoat term {{{
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.85
let g:floaterm_height = 0.95
" }}}
