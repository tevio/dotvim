" set nocompatible
filetype off

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call plug#begin('~/.vim/plugged')

" Plug 'VundleVim/Vundle.vim'

" Pairing
" Plug 'Floobits/floobits-vim'

" UI
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'

" Git & Version Control
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'

" Search
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'aklt/plantuml-syntax'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'taiansu/nerdtree-ag'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tomarrell/vim-npr'

Plug 'ap/vim-css-color'

" UML
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" Autocomplete
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" " Linting " "
Plug 'dense-analysis/ale'


" Snippets

Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'garbas/vim-snipmate'

" -- Language Support -- "
" Javascript
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
Plug 'isRuslan/vim-es6'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'millermedeiros/vim-esformatter'

" " Linting " "

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'peitalin/vim-jsx-typescript'
" Language Agnostic
" Plug 'sheerun/vim-polyglot'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-rails'
Plug 'danchoi/ri.vim'
" Plug 'rainerborene/vim-reek'

" C# .NET

Plug 'OmniSharp/omnisharp-vim'

" Elm
" Plug 'elmcast/elm-vim'

" Vue
Plug 'posva/vim-vue'

"" Python
"
" python autocompletion plugin
Plug 'davidhalter/jedi-vim'
"Plug 'sansyrox/vim-python-virtualenv'
Plug 'jmcantrell/vim-virtualenv'
"
" vim text objects for python
Plug 'jeetsukumaran/vim-pythonsense'

" Editing
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'chrisbra/matchit'
Plug 'tpope/vim-abolish'
" Plug 'https://github.com/wgurecky/vimSum.git', { 'do' : 'vim +UpdateRemotePlugins +qall' }
" Plug 'wgurecky/vimSum' " errors out
Plug 'mg979/vim-visual-multi'

" " Linting " "
" Syntax
" Plug 'scrooloose/syntastic'
Plug 'ngmy/vim-rubocop'

" Command line
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'

" System
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'qpkorr/vim-renamer'

" call vundle#end()

call plug#end()
filetype plugin indent on
