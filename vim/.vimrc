" Vim plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1 
map <F2> :NERDTreeToggle<CR>
Plugin 'The-NERD-Commenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_left_sep ='>'
    let g:airline_right_sep='<'
    let g:airline_theme='dark'
    set laststatus=2

Plugin 'Auto-Pairs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'
    
call vundle#end()            " required
filetype plugin indent on    " required
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

" Cscope
if has("cscope")
	set cscopetag
	set csto=0
	if filereadable("cscope.out")
		cs add cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set cscopeverbose

	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-\>d :cs find d ^<C-R>=expand("<cword>")<CR><CR>

	nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

syntax on
set number
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set ts=4
set hlsearch
set ignorecase
set et
