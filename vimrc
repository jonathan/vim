 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'tpope/vim-git.git'
 Bundle 'skwp/vim-rspec.git'
 Bundle 'cakebaker/scss-syntax.vim.git'
 Bundle 'vim-ruby/vim-ruby.git'
 Bundle 'vim-scripts/VimClojure.git'
 Bundle 'vim-scripts/slimv.vim.git'
 Bundle 'mileszs/ack.vim.git'
 Bundle 'tpope/vim-surround.git'
 Bundle 'scrooloose/nerdtree.git'
 Bundle 'michaeljsmith/vim-indent-object.git'
 Bundle 'chrisbra/NrrwRgn.git'
 Bundle 'jeetsukumaran/vim-buffergator.git'
 Bundle 'kien/ctrlp.vim.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

" turn on line numbers
set number
" turn on highlight search
set hlsearch

autocmd!

" Highlight Clojure's builtins
let vimclojure#HighlightBuiltins=1
" Rainbow parentheses'!
let vimclojure#ParenRainbow=1

" * Terminal Settings
" * User Interface

" have syntax highlighting
syntax on

set history=1000

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" when using list, keep tabs at their full width and display `arrows':
execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)
" (Character 187 is a right double-chevron, and 183 a mid-dot.)

" have the mouse enabled all the time:
set mouse=a

" don't have files trying to override this .vimrc:
set nomodeline

" * Text Formatting -- General

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
set tabstop=2
set shiftround
set expandtab
set autoindent

" normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 79 characters:
set formatoptions-=t
set textwidth=79

" treat lines starting with a quote mark as comments (for `Vim' files, such as
" this very one!), and colons as well so that reformatting usenet messages from
" `Tin' users works OK:
set comments+=b:\"
set comments+=n::

" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro

" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" Show eol whitespace
set list
set listchars=trail:.

" * Search & Replace

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

color desert
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

if filereadable(expand("~/.vim/nerdtree.vim"))
  source ~/.vim/nerdtree.vim
endif
