
" Colors
syntax enable 		" enable syntax processing people say you want this

" Spaces and Tabs
set tabstop=4		" number of visual spaces per TAB \\t
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4	" like tabstop but instead of \\t its for >> 
set expandtab		" tabs are spaces
set autoindent      " I like it when it autoindents

" UI Config
set number 	" show line numbers
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


" Leader Shortcuts
    " map esc to jj
inoremap jk <ESC>	

colorscheme oxeded
                    " hopefully this makes the background transparent
"hi NonText ctermbg=none 
hi Normal guibg=NONE ctermbg=NONE 
