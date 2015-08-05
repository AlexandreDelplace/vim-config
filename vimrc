" Automatic reloading of vimrc
"
autocmd! bufwritepost .vimrc source %


execute pathogen#infect() 

""""""""""""""""""""""""""
""""""""GENERAL"""""""""""
""""""""""""""""""""""""""

set encoding=utf-8

filetype plugin indent on
set omnifunc=syntaxcomplet

set history=700
set undolevels=700

syntax on 
set background=dark
"colorscheme solarized
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

set mouse=a

set laststatus=2

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
"""""""""""FONT""""""""""""
"""""""""""""""""""""""""""

syntax on

"try
"	colorscheme desert
"catch
"endtry

set encoding=utf8

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

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

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
map <C-j> 10j<CR>
" Jump over 10 lines
map <C-k> 12k<CR>

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


set completeopt=longest,menuone
function! OmniPopup(action)
	if pumvisible()
		if a:action == 'j'
			return "\<C-N>"
		else if a:action == 'k'
			return "\<C-P>"
		endif
	endif
	return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

""""""""""""""""""""""""""""""""
""""""""""""SYNTASTIC"""""""""""
""""""""""""""""""""""""""""""""

 "let g:syntastic_javascript_checkers = ['gjslint']

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
"""""""JAVASCRIPT LIB"""""""""""
""""""""""""""""""""""""""""""""

let g:used_javascript_libs = 'angularjs,requirejs,jasmine'
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

""""""""""""""""""""""""""""""""
"""""""C++ LIB"""""""""""
""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.cpp set syntax=cpp11
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

""""""""""""""""""""""""""""""""
"""""""C++ LIB"""""""""""
""""""""""""""""""""""""""""""""

nmap <F8> :TagbarToggle<CR>
