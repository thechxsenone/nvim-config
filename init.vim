call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'phanviet/vim-monokai-pro'
Plug 'junegunn/seoul256.vim'
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
Plug 'sirver/ultisnips'
Plug 'vimlab/split-term.vim'
Plug 'preservim/nerdtree'
Plug 'zchee/deoplete-jedi'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'shime/vim-livedown'
call plug#end()

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_complete_enabled=1

let g:deoplete#enable_at_startup = 1
let g:jedi#force_py_version = 3

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:neomake_python_enabled_makers = ['pylint']

syntax on
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set splitbelow
set number
set laststatus=2
set termguicolors
colorscheme nord
set hidden
" Some servers have issues with backup files, see #649
set nobackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
nnoremap <leader>ld :LivedownToggle<CR>
