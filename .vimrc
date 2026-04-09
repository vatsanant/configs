" PLUGINS ------------------------
" --------------------------------
call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox' "theme plugin
Plug 'embark-theme/vim' "theme plugin
Plug 'itchyny/lightline.vim' "theme plugin
Plug 'octol/vim-cpp-enhanced-highlight' "¯\_( ❛ ͜ʖ ❛ )_/¯
Plug 'scrooloose/nerdtree' "folder & files tree
Plug 'NLKNguyen/papercolor-theme'
Plug 'jiangmiao/auto-pairs'
call plug#end()


" Basic Configurations -----------
" --------------------------------
syntax on 
set virtualedit=onemore          "cursor past the last char in esc mode  
set nu                           "for number lines
set relativenumber               "relative numbering
set cursorline                   "higlights the current row of cursor
set tabstop=3                    "indent guide settings
set shiftwidth=3                 "i don't know, copy pasted, works fine though
set expandtab                    "use spaces instead of tab, more portable
set smartcase                    "case incensitive, unless typepd upper case
set showmatch                    "show matching parantheses
set clipboard=unnamedplus        "for easy copy pasting
set backspace=2                  "to be able to use backspace
set laststatus=2
set backspace=indent,eol,start
set ignorecase                   "while searching ignore cases"
set incsearch                    "Ignore capital letters during search."
set guioptions-=r                "Remove right vertical scrollbar
set guioptions-=l                "Remove left vertical scrollbar (if any)
" set guifont=Hack\ 13             "fav fonts :{hack, size : 11}, {losevka, size : 11}, { Fantasque Sans Mono, size : 12} 
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '<': '>', '"': '"', "'": "'", "/*": "*/"}  "not worknig in linux smh
set guioptions=                  " hides all the gui elements (toolbars, sidebars, menubars)


" cursor shape (works in most modern terminals)
let &t_SI= "\e[5 q"   " insert mode = beam
let &t_EI = "\e[2 q"   " normal mode = block
let &t_SR = "\e[3 q"   " replace mode = underline

" KEY MAP ------------------------
" --------------------------------

inoremap jj <esc> 

let g:AutoPairsMapBS = 0
inoremap <C-H> <C-W>
inoremap <C-BS> <C-W>


"Move the current line or selected lines up
nnoremap <A-Up> :move -2<CR>==
xnoremap <A-Up> :move '<-2<CR>gv=gv

"Move the current line or selected lines down
nnoremap <A-Down> :move +1<CR>==
xnoremap <A-Down> :move '>+1<CR>gv=gv

" Appearance ---------------------
" --------------------------------

" let g:gruvbox_termcolors = '16'
colorscheme PaperColor
let g:rehash256 = 1
let g:nord_bold = 1

"gVim configs --------------------
" --------------------------------
if has("gui_running")
   if has("gui_gtk2") || has("gui_gtk3")
      set guifont=Hack\ Bold\ 12
   elseif has("gui_macvim")
      set guifont=Menlo\ Regular:h14
   elseif has("gui_win32")
      set guifont=Consolas:h11:cANSI
      set guioptions -=m "Hides the menubar
      set guioptions -=T "Hides the toolbar 
   endif
endif
