source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/vim-plug/theme.vim
source $HOME/.config/nvim/vim-plug/markdown_preview.vim

"source $HOME/.config/nvim/vim-plug/lsp.vim

let mapleader = " "
"==============================================================================
"key combos
"==============================================================================

"Navigate buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bl :blast<CR>

autocmd StdinReadPre * let s:std

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Buffer navigation
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-lua', 'coc-python', 'coc-vetur']
lua require("siblamer") 

let NERDTreeShowHidden=1

" Siblamer Shortcuts
nnoremap <leader>w :w!<CR>
nnoremap <leader>e :q!<CR>
" Reloading init.vim shortcut 
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>

" Telescope shortcuts
nnoremap <leader>f :lua require("siblamer").file_browser() <cr>
nnoremap <leader>z :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <cr> 
nnoremap <leader>gs :Telescope git_status <cr> 
nnoremap <leader>gb :Telescope git_branches <cr> 
nnoremap <leader>gc :Telescope git_commits <cr>
nnoremap <leader>gr :GoRun main.go <cr>
" Nerdtree Shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" NerdTree Settings
" autocmd VimEnter * NERDTree| wincmd p

" Mark Down Preview shorcut
nnoremap <C-p> :MarkdownPreview <cr>

" Coc Python shortcuts
nnoremap <C-p>r :CocCommand python.execInTerminal <CR>

