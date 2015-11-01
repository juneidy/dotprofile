set tabstop=3
set number
set relativenumber
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

" Sometimes in javascript the vimdiff highlight overlaps with comments colour
if &diff
    colorscheme evening
 endif


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

" Relative or absolute number lines
function! RelativeAbsoluteNumberToggle()
	if(&rnu == 1)
		set relativenumber!
	else
		set relativenumber
	endif
endfunction

nnoremap <C-n><C-n> :call RelativeAbsoluteNumberToggle()<CR>

" For Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
