" Start of plugin section
call plug#begin()

  " Colored status bar
  Plug 'itchyny/lightline.vim'

  " VSCode-like IntelliSense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " VSCode-like Auto Comment
  Plug 'preservim/nerdcommenter'

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

  " Makes nerdcommenter work
  filetype plugin on

  " Makes vim-polyglot work
  set nocompatible

  " Makes lightline.vim use Wombat colorscheme
  let g:lightline = {
     \ 'colorscheme': 'wombat',
     \ }

" End of command section

" Start of aliases section

  " Select all
  noremap <C-a> ggVG

  " Cut
  noremap <C-x> d

  " Copy
  noremap <C-c> "+y

  " Paste
  noremap <C-v> "+p

  " Comment
  noremap <C-_> <leader>cc

" End of aliases section
