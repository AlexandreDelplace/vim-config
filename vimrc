

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/taglist.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-jp/vim-cpp'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'Lokaltog/vim-powerline'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'evidens/vim-twig'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

""""""""""""""""""""""""""
""""""""GENERAL"""""""""""
""""""""""""""""""""""""""

set encoding=utf-8

filetype plugin indent on

set history=700
set undolevels=700

syntax on 
"set background=dark
colorscheme Monokai
let g:solarized_termcolors=256


" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Change leader key
let mapleader=","

" Normal copy and paste
set clipboard=unnamedplus

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw 
"
" " For regular expressions turn magic on
set magic
"
" " Show matching brackets when text indicator is over them
set showmatch 
" " How many tenths of a second to blink when matching brackets
set mat=2

set mouse=a

set laststatus=2

set nocp

""""""""""""""""""""""""""
"""""""""""USER"""""""""""
""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Ignore case and be smart when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Show lines number
set number
set cursorline

" highlight the line number
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE
hi LineNr   ctermfg=white  guifg=#2b506e guibg=#000000 


"""""""""""""""""""""""""""
""""""""""FILES""""""""""""
"""""""""""""""""""""""""""

" Turn backup off
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""
"""""""""""INDENT""""""""""
"""""""""""""""""""""""""""

" Be smart when using tabs
set smarttab

" Smart backspace
set backspace=indent,eol,start

" Linebreak on 500 characters
set lbr
set tw=500

"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"""""""""""""""""""""""""""
""""""""""MAPPING""""""""""
"""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Focus (& open) nerdtree
map <C-h> :NERDTreeSteppedOpen<CR>

" Unfocus nerdtree
map <C-l> :NERDTreeSteppedClose<CR>

" Jump down 10 lines
noremap <C-j> 10j<CR>
" Jump over 10 lines
noremap <C-k> 12k<CR>

" Treat long lines as break lines (useful when moving around in them)
 map j gj
 map k gk

 " Tab nav
nnoremap tm  :tabm<Space>

" Easy line moves in normal en visual mode
nnoremap <S-Down> :m+<CR>
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Right> :><CR>
nnoremap <S-Left> :<<CR>
vnoremap <S-Right> >gv<CR>
vnoremap <S-Left> <gv<CR>

nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Show_One_File = 1

""""""""""""""""""""""""""""""""
""""""""""""EASYMOTION""""""""""
""""""""""""""""""""""""""""""""

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:neocomplcache_enable_at_startup = 1


""""""""""""""""""""""""""""""""
""""""""""""CTRLP"""""""""""""""
""""""""""""""""""""""""""""""""

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o
set wildignore+=*/node_modules/*,*/bower_components/*,*/bower/*,*/cache/*,*/vendor/*

""""""""""""""""""""""""""""""""
""""""""""""C++ LIB"""""""""""""
""""""""""""""""""""""""""""""""

"au BufNewFile,BufRead *.cpp set syntax=cpp11
let g:cpp_class_scope_highlight = 1
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

set tags+=~/.vim/tags/qt4
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

""""""""""""""""""""""""""""""""
""""""""""""POWERLINE"""""""""""
""""""""""""""""""""""""""""""""

"let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

""""""""""""""""""""""""""""""""
""""""""""""SYNTASTIC"""""""""""
""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au BufRead,BufNewFile *.twig set syntax=twig.vim
