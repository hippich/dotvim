set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set term=screen-256color

set nocompatible
set t_Co=256

set cursorline
set cursorcolumn

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#helptags()
  call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundle'))
end

syntax on
filetype plugin indent on

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

""colorscheme tir_black
""colorscheme simpleandfriendly
""colorscheme zenburn256
colorscheme lucius
LuciusDarkLowContrast

"colorscheme vividchalk
"colorscheme herald
"set background=dark

let bash_is_sh=1
set cinoptions=:0,(s,u0,U1,g0,t0

set modelines=5
set tags=tags;/

set laststatus=2

" default:
" set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P
" highlihgt the file name
hi User1 term=bold,reverse cterm=bold ctermfg=4 ctermbg=2 gui=bold guifg=Blue guibg=#44aa00
set statusline=%<%1*%f%*\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

"set cuc
"set cul

set number

set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS
set incsearch           " Incremental search
set autowriteall        " Automatically save before commands like :next and :make
set hlsearch            " Highlight search match
set hidden              " enable multiple modified buffers
set nobackup            " do not write backup files
"set noswapfile          " do not write .swp files
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set history=1000
set wildmenu
set ruler
set visualbell
set autoread            " automatically read feil that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"

set ts=4
set sw=4

"fixdel

" prevent vim from adding that stupid empty line at the end of every file
set noeol

"Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

set backupdir=~/.backup,.
set directory=~/.backup,~/tmp,.

" enable showmmarks
let g:showmarks_enable = 1
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr

" Make
:command -nargs=* Make make <args> | cwindow 3

"set completeopt=menuone,preview,longest
set completeopt=menuone,preview
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Omni completion settings
"set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
" completing Rails hangs a lot
"let g:rubycomplete_rails = 1

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1


let mapleader = ","

" Don't use Ex mode, use Q for formatting
map Q gq

" highlight trailing whitespace  
set listchars=tab:▷⋅,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" ,t to show tags window
let Tlist_Show_Menu=1
nmap <leader>t :TlistToggle<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" ,f to fast finding files using fuzzy finder.
nmap <leader>f :FufFile **/<CR>

nmap <leader>S :SessionList<CR>
nmap <leader>SS :SessionSave<CR>
nmap <leader>SA :SessionSaveAs<CR>

" ,b to display current buffers list
let g:miniBufExplVSplit = 25
let g:miniBufExplorerMoreThanOne = 100
let g:miniBufExplUseSingleClick = 1
"nmap <Leader>b :MiniBufExplorer<cr>

" ,b to display current buffers via FuzzyFinder
"nmap <Leader>b :FufBuffer<cr>

let g:Conque_Read_Timeout = 50 " timeout for waiting for command output.
let g:Conque_TERM = 'xterm'

" ,sh to open vimshell window
nmap <Leader>sh :ConqueSplit bash<cr>

" ,r to open vimshell window
nmap <Leader>r :ConqueSplit 

" map ,y to show the yankring
nmap <leader>y :YRShow<cr>

if has("mouse")
  set mouse=a
endif

let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'

set shell=/bin/bash
set expandtab
set tabstop=4
set shiftwidth=4

set mouse-=a

let g:psc_style = 'zenburn'
function! s:SwitchPSCStyle()
  if exists('g:psc_style')
    if g:psc_style == 'silent'
      let g:psc_style = 'zenburn'
    elseif g:psc_style == 'zenburn'
      let g:psc_style = 'silent'
    endif
  else
    let g:psc_style = 'silent'
  endif
  execute "colorscheme ".g:psc_style
endfunction

autocmd BufEnter *.tt set filetype=html
autocmd BufEnter *. set filetype=html
autocmd BufEnter *.module set filetype=php

set fileformat=dos
set fileformats=unix,dos

let mojo_highlight_data = 1

command W w !sudo tee % > /dev/null

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
au BufRead,BufNewFile *.json set filetype=json
let g:JSLintHighlightErrorLine = 0

""""""""""""""
" tmux fixes "
""""""""""""""
" Handle tmux $TERM quirks in vim
map <Esc>OH <Home>
map! <Esc>OH <Home>
map <Esc>OF <End>
map! <Esc>OF <End>
"map <Esc>[A <Up>
"map <Esc>[B <Down>
"map <Esc>[C <Right>
"map <Esc>[D <Left>

" tmux will send xterm-style keys when its xterm-keys option is on
"execute "set <xUp>=\e[1;*A"
"execute "set <xDown>=\e[1;*B"
"execute "set <xRight>=\e[1;*C"
"execute "set <xLeft>=\e[1;*D"
let g:syntastic_javascript_checkers = ['']
au BufNewFile,BufRead *.ejs set filetype=html
map <silent> <F6> :call <SID>SwitchPSCStyle()<CR>

if v:version < 700 || exists('loaded_switchcolor') || &cp
    finish
endif

let loaded_switchcolor = 1

let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
let s:swcolors = map(paths, 'fnamemodify(v:val, ":t:r")')
let s:swskip = [ '256-jungle', '3dglasses', 'calmar256-light', 'coots-beauty-256', 'grb256' ]
let s:swback = 0    " background variants light/dark was not yet switched
let s:swindex = 0

function! SwitchColor(swinc)

    " if have switched background: dark/light
    if (s:swback == 1)
        let s:swback = 0
        let s:swindex += a:swinc
        let i = s:swindex % len(s:swcolors)

        " in skip list
        if (index(s:swskip, s:swcolors[i]) == -1)
            execute "colorscheme " . s:swcolors[i]
        else
            return SwitchColor(a:swinc)
        endif

    else
        let s:swback = 1
        if (&background == "light")
            execute "set background=dark"
        else
            execute "set background=light"
        endif

        " roll back if background is not supported
        if (!exists('g:colors_name'))
            return SwitchColor(a:swinc)
        endif
    endif

    " show current name on screen. :h :echo-redraw
    redraw
    execute "colorscheme"
endfunction

 map <F8>        :call SwitchColor(1)<CR>
imap <F8>   <Esc>:call SwitchColor(1)<CR>

 map <S-F8>      :call SwitchColor(-1)<CR>
imap <S-F8> <Esc>:call SwitchColor(-1)<CR>
let g:syntastic_javascript_checkers = ['eslint']
let tern#is_show_argument_hints_enabled='on_move'
let tern#tern_show_signature_in_pum=1
set noshowmode

au BufRead,BufNewFile *.ts setlocal filetype=typescript
set rtp+=~/.vim/bundle/typescript-tools.vim/
let g:syntastic_typescript_tsc_args = '--target ES5 --module amd --outDir /tmp/tss'
let g:loaded_syntastic_typescript_tsc_checker = 0

set mouse=a
set ttymouse=xterm2

" Copy current file path to X buffer
nmap <silent> <leader>cp :let @+ = expand("%")<CR>

let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_completion_preview = 1
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

