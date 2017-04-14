filetype plugin on

set listchars=tab:▸\ ,eol:¬

:set rnu

" Mouse? 
" set mouse-=a

" Arrow keys are not a right. They are earned. 
noremap <Up> ""
"noremap! <Up> <Esc>
noremap <Down> ""
"noremap! <Down> <Esc>
noremap <Left> ""
"noremap! <Left> <Esc>
noremap <Right> ""
"noremap! <Right> <Esc>

noremap <Space> zz

autocmd InsertEnter * :set rnu!
autocmd InsertLeave * :set rnu

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" asdsadfasPathogen? Bundle 'scrooloose/nerdtree'

Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" I somehow messed up my backspace. 
set backspace=indent,eol,start

"Basic Settings
:filetype on
:syntax on
:set hlsearch

"Tab width is 4
:set ts=4
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set number
"256-color Mode
:set t_Co=256
:colorscheme desert
"used to dark background, use cyan instead of blue for comments
:highlight darkComment ctermfg=6
:highlight cComment ctermfg=6
:highlight texComment ctermfg=6
:highlight shComment ctermfg=6
:highlight cshComment ctermfg=6
:highlight makeComment ctermfg=2
:highlight gnuplotComment ctermfg=6

"//#:imap ` <ESC>
":highlight awkComment ctermfg=2
"Don't know what ^^ does, so commented out
"Filetypes
""ACT syntax highlighting
au BufRead,BufNewFile *.hac set filetype=hackt
au BufRead,BufNewFile *.actmx set filetype=hackt
au BufRead,BufNewFile *.act set filetype=hackt
au! Syntax hackt source ~/.vim/syntax/hackt.vim
""pandR syntax highlighting
au BufRead,BufNewFile *.pcs set filetype=pcs
au! Syntax pcs source ~/.vim/syntax/pcs.vim
""asciidoc syntax highlighting
au BufRead,BufNewFile *.txt set filetype=asciidoc|set tw=80
"if $HOSTNAME == "hal-00.csl.cornell.edu"
"    au! Syntax asciidoc source /usr/share/doc/asciidoc-8.2.7/vim/syntax/asciidoc.vim
"else
"    au! Syntax asciidoc source /usr/share/vim/addons/syntax/asciidoc.vim
"endif
""spice syntax highlighting
au BufRead,BufNewFile *.spi set filetype=spice
au! Syntax spice source ~/.vim/syntax/spice.vim
""LaTeX 80 char limit
au BufRead,BufNewFile *.tex set tw=80

"80 char limit
"highlight OverLength term=underline cterm=underline
"match OverLength /\%81v.\+/"

" Spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" VimDiff
highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Magenta gui=none guifg=black guibg=Magenta


execute pathogen#infect()



set mouse=a
if has('mouse_sgr')
    set ttymouse=sgr
endif
