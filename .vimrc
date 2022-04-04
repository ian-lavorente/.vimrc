" Start of plugin section
call plug#begin()

  " Colored status bar
  Plug 'itchyny/lightline.vim'

  " VSCode-like IntelliSense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " VSCode-like Auto Comment
  Plug 'preservim/nerdcommenter'

  " VSCode-like sidebar
  Plug 'preservim/nerdtree'

  " Language support
  Plug 'sheerun/vim-polyglot'

" End of plugin section
call plug#end()

" Start of command section

  " Makes clipboard the default register
  set clipboard=unnamed

  " Makes numbers appear on side of screen
  set number

  " Makes lightline.vim work
  set laststatus=2

  " Makes vim-polyglot work
  set nocompatible

  " Makes lightline.vim use Wombat colorscheme
  let g:lightline = {
     \ 'colorscheme': 'wombat',
     \ }

  " Makes NERDTree start when Vim is started without file arguments.
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

  " Makes Vim close if NERDTree is the only window remaining in the only tab.
  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" End of command section

" Start of aliases section

  " Select all
  noremap <C-a> ggVG

  " Copy
  noremap <C-c> "*y

  " Paste
  noremap <C-p> p

" End of aliases section
