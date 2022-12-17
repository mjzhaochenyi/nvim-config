
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'navarasu/onedark.nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
call plug#end()


set nocompatible
filetype plugin indent on	" required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
" set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set cursorline
set clipboard=unnamed
set path+=** " fuzzy find files
if has("nvim")
    set inccommand=nosplit
endif
colorscheme onedark
set tabstop=4 " set the tabsize
set shiftwidth=4
set expandtab
set relativenumber " set relative line number
set tags=tags

" nerdtree related
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" easymotion related
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" add python support
let g:python3_host_prog="/Users/gazzhao/.pyenv/versions/3.7.9/Library/Frameworks/Python.framework/Versions/3.7/bin/python"
