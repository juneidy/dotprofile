set tabstop=3
set number
set shiftwidth=3
set colorcolumn=80
set smartindent
filetype plugin indent on
filetype plugin on
syntax on
hi Comment ctermfg=LightBlue
set textwidth=80
set cursorline
set hlsearch
au BufNewFile,BufRead *.less set filetype=less
set scrolloff=2


call plug#begin('~/.vim/plugged')

" Unite
"   depend on vimproc
"   ------------- VERY IMPORTANT ------------
"   you have to go to .vim/plugin/vimproc.vim and do a ./make
"   -----------------------------------------
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'

call plug#end()

let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)
