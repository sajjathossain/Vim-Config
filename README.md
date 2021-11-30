# Vim Config :)

> **Some of my Keybindings :)**

1. Leader key: `Space`
1. Activate Insert Mode (at the beginning of the character): `i`
1. Activate Insert Mode (at the start of the line): `I`
1. Activate Insert Mode (after of the character): `a`
1. Activate Insert Mode (at the end of the line): `A`
1. Save file: `<leader> fs`
1. Save & Quit: `<leader> qs`
1. Quit without saving: `<leader> qq`
1. Search for files: `<leader> ff`
1. Search in files using regex: `<leader> fF`
1. Seearch in files in specific files types: `leader fF` > add `-g '*.fileExtension'`
1. Search in files and open in vsplit: `<leader> fF` > `<C-v>`
1. Search buffers: `<leader> bb`
1. Search in opened buffers: `<leader> sb`
1. Search in opened file: `<leader> sp`
1. New tab: `<leader> tc`
1. Next tab: `<leader> tn`
1. Previous tab: `<leader> tp`
1. Close tab: `<leader> tq`
1. Multi word selection: `<C-n>`
1. Highlight a word: `shift-8`
1. Highlight words: `visual > shift-8`
1. Replace highlighted word inside the whole file (greedy): `<leader> rf`
1. Replace highlighted word inside the whole file (greedy confirm): `<leader> rF`
1. Change colorscheme: 
    1. Dracula `<F1>`
    1. Nord `<F2>`
    1. Onedark `<F3>`
    1. Gruvbox `<F4>`
1. Open lazygit: `<leader>gg`
1. Exit lazygit: `q`
1. Goto definition: `<leader>gd`

<hr/>

> ### All installed plugins ;)

[**Note:** plugin directory `/home/.config/nvim/plugged`]

> **Themes :**

1. Onedark `Plug 'joshdick/onedark.vim'`
1. Nord `Plug 'arcticicestudio/nord-vim'`
1. Gruvbox `Plug 'morhetz/gruvbox'`
1. Dracula `Plug 'crusoexia/vim-dracula'`
1. Ayu `Plug 'ayu-theme/ayu-vim'`
1. Challenger-Deep `Plug 'challenger-deep-theme/vim', { 'as': 'challenger_deep' }`
1. Oceanic-Next `Plug 'mhartington/oceanic-next', { 'as': 'oceanic_next'}`

> **Language | Frameworks | Libraries | Intellisense | Autocompletions:**

1. TypeScript `Plug 'leafgarland/typescript-vim'`
1. TSX `Plug 'ianks/vim-tsx'`
1. Coc

```vim
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-css', 'coc-emmet', 'coc-eslint', 'coc-explorer', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tabnine', 'coc-tsserver', 'coc-git', 'coc-tailwindcss' ]
```

1. Vim Snipptes `Plug 'honza/vim-snippets'`
1. Vim css color `Plug 'ap/vim-css-color'`

> **Vim | Git:**

1. Vim airline `Plug 'vim-airline/vim-airline'`
1. Vim airline themes `Plug 'vim-airline/vim-airline-themes'`
1. Nerdtree (file-browser) `Plug 'scrooloose/nerdtree'`
1. Nerdtree-git (git-file-visualization) `Plug 'Xuyuanp/nerdtree-git-plugin'`
1. Which key (key-binding-preview) `Plug 'liuchengxu/vim-which-key'`
1. Fzf (file-search-utility)
   `Plug 'junegunn/fzf.vim'`
   `Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }`
1. Devicons (file-icons) `Plug 'ryanoasis/vim-devicons'`
1. Vim-visual-multicursor `Plug 'mg979/vim-visual-multi'`
1. Vim git blamer (gitlens alternative) `Plug 'APZelos/blamer.nvim'`
1. Vim goto definition from react `Plug 'ivo-donchev/goto-definition-plugin-for-react'`
1. Vim incremental search (improved) `Plug 'haya14busa/is.vim'`
1. Vim visual star search `Plug 'nelstrom/vim-visual-star-search'`
1. Vim commentary (toggle-comments): `Plug 'tpope/vim-commentary'`
1. Lazygit support in vim (git-tui-client): `Plug 'kdheepak/lazygit.nvim'`
1. Vim multi word select: `Plug 'nelstrom/vim-visual-star-search'`
