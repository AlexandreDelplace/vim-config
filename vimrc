

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
Plugin 'Shougo/neocomplete.vim'
Plugin 'bling/vim-airline'
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
Plugin 'vim-scripts/YankRing.vim'
Plugin 'Raimondi/delimitMate'

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
set t_Co=256

filetype plugin indent on

set history=700
set undolevels=700

syntax on 
"set background=dark
colorscheme mon 
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
"hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE
"hi LineNr   ctermfg=white  guifg=#2b506e guibg=#000000 


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

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Show_One_File = 1

""""""""""""""""""""""""""""""""
""""""""""""NERDCOMMENTER""""""""""
""""""""""""""""""""""""""""""""

nmap <C-c> <leader>c<Space>
 vmap <C-c> <leader>c<Space>

""""""""""""""""""""""""""""""""
""""""""""""EASYMOTION""""""""""
""""""""""""""""""""""""""""""""

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:neocomplcache_enable_at_startup = 1

nmap f <Plug>(easymotion-w)
nmap F <Plug>(easymotion-e)
nmap z <Plug>(easymotion-b)
nmap Z <Plug>(easymotion-ge)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


""""""""""""""""""""""""""""""""
""""""""""""CTRLP"""""""""""""""
""""""""""""""""""""""""""""""""

set wildignore+=*/tmp/*,.git,*~,*.so,*.swp,*.zip,*.o,*/node_modules/*,*/bower_components/*,*/bower/*,*/cache/*,*/vendor/*
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\cache'
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = 'find %s -type f'     
let g:webdevicons_enable_ctrlp = 1
nmap <leader>p :CtrlPClearCache<CR>:CtrlPMRUFiles<CR>
nmap <C-m> :CtrlP<CR>
if exists("g:ctrl_user_command")
      unlet g:ctrlp_user_command
  endif

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
"""""""""""""AIRLINE""""""""""""
""""""""""""""""""""""""""""""""

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


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

""""""""""""""""""""""""""""""""
""""""""""""SYNTASTIC"""""""""""
""""""""""""""""""""""""""""""""


 "This allows buffers to be hidden if you've modified a buffer.
 " This is almost a must if you wish to use buffers in this way.
 set hidden

 " To open a new empty buffer
 " This replaces :tabnew which I used to bind to this mapping
 nmap <leader>t :enew<cr>

 " Move to the next buffer
 nmap <leader>l :bnext<CR>

 " Move to the previous buffer
 nmap <leader>h :bprevious<CR>

 " Close the current buffer and move to the previous one
 " This replicates the idea of closing a tab
 nmap <leader>q :bp <BAR> bd #<CR>

 " Show all open buffers and their status
 nmap <leader>ls :ls<CR>

""""""""""""""""""""""""""""""""
""""""""""""GITGUTTER"""""""""""
""""""""""""""""""""""""""""""""

let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0

""""""""""""""""""""""""""""""""
""""""""""""YANGRING"""""""""""
""""""""""""""""""""""""""""""""

let g:yankring_replace_n_pkey='<leader>b'
let g:yankring_replace_n_nkey='<leader>n'


""""""""""""""""""""""""""""""""
"""""""""""NEOCOMPLETE""""""""""
""""""""""""""""""""""""""""""""

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    "For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
