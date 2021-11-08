"==============================================================================
"autoinstall plug.vim
"==============================================================================


if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo 'Downloading junegunn/vim-plug to manage plugins...'
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  augroup plug
    au!
    au VimEnter * PlugInstall
  augroup END
endif


"==================================================================================
"plugins
"==================================================================================

call plug#begin('~/.config/nvim/autoload/plugged/')

" For JS/JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Pretty Themes
Plug 'morhetz/gruvbox'


Plug 'tpope/vim-surround'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

"Autocomplete plugin
"Also do :CocInstall coc-clangd coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-python coc-java 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Language packs
Plug 'sheerun/vim-polyglot'

"Debugging
"I can't actually debug in nvim yet... This is a WIP
Plug 'puremourning/vimspector'

"Nvim motions
Plug 'phaazon/hop.nvim'

"Buffer navigation
Plug 'vim-airline/vim-airline'

"Go
Plug 'fatih/vim-go'

"Grammar checking because I can't english
Plug 'rhysd/vim-grammarous'

"Telescope Requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

"git diff
Plug 'sindrets/diffview.nvim'

"magit
Plug 'TimUntersberger/neogit'

"devicons
Plug 'kyazdani42/nvim-web-devicons'
" File explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Emmet-vim
Plug 'mattn/emmet-vim'

call plug#end()



