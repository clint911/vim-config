" Plugins will be downloaded uner the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

if empty(glob('~/.vim/autoload/plug.vim'))
	        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif
call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""""
"all languages support
Plug 'sheerun/vim-polyglot'
"""""""""""""""""""""""""""""
Plug 'tomlion/vim-solidity'
"""""""""""""""""""Java support
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
""""""""""""""""""""""""""""""
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"""""""""""""""""""""""""""""""""""adding typescript support 
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
Plug 'https://github.com/itchyny/lightline.vim'
" Install the vim-devicons plugin
Plug 'ryanoasis/vim-devicons'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" or                                , { 'branch': '0.1.x' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
	 set termguicolors
 endif

 " For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 """"" enable the theme

 syntax enable
"""""""""""""""""""""""""""""""""""""""""""""other configs
let g:netrw_winsize = 30
let g:newtrw_list_hide ='\(^\|\s\s)\zs\. \s\+'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
"""""""""""""""""""""""""""""""""""""""""""tokyonight 
set number relativenumber 
set virtualedit+=onemore

" Use the vim-devicons plugin to display dev icons in the lightline
colorscheme catppuccin_mocha 
let g:airline_theme = 'catppuccin_mocha'
"
" Set the Lightline colorscheme to Tokyo Night
let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ }
let g:lightline.component_expand = {
      \ 'tabline': 'tabline_devicons',
      \ 'left': [ [ 'mode', 'paste' ],
      \ [ 'keystroke' ],
      \ [ 'fugitive', 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \ [ 'percent', 'fileformat', 'fileencoding', 'filetype' ] ]
      \ }
"""""""""some advanced remaps 
""""""""some advanced vimscript
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
    " remap for complete to use tab and <cr>
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
    inoremap <silent><expr> <c-space> coc#refresh()
""""""""""some advanced remaps
let g:devicons_enable_finder = 1
nmap <Space>w :w<CR>
nmap <Space>wq :wq<CR>
nmap <Space>e :Ex<CR>
" Find files using Telescope command-line sugar.
nnoremap <Space>ff <cmd>Telescope find_files<cr>
nnoremap <Space>fg <cmd>Telescope live_grep<cr>
nnoremap <Space>fb <cmd>Telescope buffers<cr>
nnoremap <Space>fh <cmd>Telescope help_tags<cr>
nmap <Space>pf :Files<CR>
