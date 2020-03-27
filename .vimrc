 "Colors
 "Change theme depending on the time of day
let hr = (strftime('%H'))
if hr >= 19
    colorscheme vimbrains
elseif hr >= 8
    colorscheme vimbrains
    "summerfruit256
elseif hr >= 0
    colorscheme gruvbox
endif

" enable syntax processing people say you want this
syntax enable 		

" Spaces and Tabs
" number of visual spaces per TAB \\t
set tabstop=4		
" number of spaces in tab when editing
set softtabstop=4	
" like tabstop but instead of \\t its for 
set shiftwidth=4	
" tabs are spaces
set expandtab		
" Indentation should work automatically
set autoindent      
			

" UI Config
set number 	    " show line numbers
set cursorline	" highlights current line
set wildmenu	" visual autocomplete for command menu
set showmatch	" highlights parenthesis-like characters match

" Searching 
set incsearch 	" search as characters are entered
set hlsearch	" highlight matches
    "turn off search highlight escape key
nnoremap <leader><space> :nohlsearch<CR>

" Movement
    " move through wrapped lines!
nnoremap j gj
"nnoremap k gk 	
    " move to beginning/end of line <this'll overwrite the original bindings>
nnoremap B ^
nnoremap E $
    " $/^ rebind them to not do anything 
nnoremap $ <nop>
nnoremap ^ <nop>

    "Map to Toggle the numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Leader Shortcuts
    " map esc to jj
inoremap jk <esc>	

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/pack/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" this is the stuff that came from vim-plug
    Plug 'junegunn/seoul256.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'preservim/nerdtree'
    Plug  'myusuf3/numbers.vim' 

        " Castel's vimtex
    Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsEditSplit = 'tabdo'

    Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    "let g:vimtex_view_method='zathura'
    "let g:vimtex_quickfix_mode=0

    Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=2
    let g:tex_conceal='abdmg'


    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    let g:livepreview_previewer='zathura' 
    autocmd Filetype tex setl updatetime=1

    Plug 'gillescastel/latex-snippets' 

"    setlocal spell
"    set spelllang=en_us
"    inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
call plug#end()


