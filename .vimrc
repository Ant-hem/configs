" Loading plugins
so ~/.vim/plugins.vim

" General
set number 
set linebreak	
set showbreak=+++ 
set textwidth=100
set showmatch	
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set expandtab	
set shiftwidth=4
set smartindent	
set smarttab
set softtabstop=4
 
set ruler
 
set undolevels=1000
set backspace=indent,eol,start

" Syntax coloration
syntax on

" Wrap column
set colorcolumn=80

" Shortcuts
map <C-o> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

" Plugins
set laststatus=2
