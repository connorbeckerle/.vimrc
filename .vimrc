" mapleader definition has to be on top:
let mapleader=","       " leader is comma
" filetype off is supposed to be first..?
filetype off

" necessary for pathogen:
" disable plugins
let g:pathogen_disabled = []
" disable xmledit plugin: [CURRENTLY ENABLED]
"call add(g:pathogen_disabled, 'xmledit')
call add(g:pathogen_disabled, 'paredit')

execute pathogen#infect()
execute pathogen#helptags()

" the good settings:
set background=dark " obvious
set tabstop=4 " number of visual spaces per tab
set shiftwidth=4 " similar
set softtabstop=4 " number of spaces added/removed while editing
set expandtab " tabs become spaces
" NOTE - disabled autoindent to not fuck up python. filetype indent should
" work better.
"set smartindent " do smart indenting when starting a new line
"set autoindent " copies previous indent when starting a newline
filetype indent on " makes filetype-based indenting work
filetype plugin on " necessary for xmledit
set number " show line numbers
set wildmenu " cyclical menu for autocompletion
set showmatch " highlight matching bracket
set incsearch " search as you type
set hlsearch " highlight search results
set pastetoggle=<F3> " f3 to toggle paste mode
set splitright " new splits open on right

" turn off search highlight
noremap <leader>d :nohlsearch<CR>

" move vertically by visual line (don't skip over wrapped lines) (disabled)
"nnoremap j gj
"nnoremap k gk
"
" highlight last inserted text - doesn't work??
"nnoremap gV `[v`]
"
" edit vimrc with ev
nnoremap <leader>ev :vsp ~/.vimrc<CR>

" load vimrc with sv
nnoremap <leader>sv :source ~/.vimrc<CR>

" save session (reopen with vim -S)
nnoremap <leader>s :mksession<CR>

" <leader>f is escape
noremap <leader>f <esc>
inoremap ,f <esc>

" set html indentation lower:
autocmd FileType html setlocal softtabstop=2 shiftwidth=2 tabstop=2
" set html to indent inside <p>:
let g:html_indent_inctags = "p"

" for scheme/lisp:
"let g:tslime_ensure_trailing_newlines = 1 " deprecated/tslime
let g:slime_target = "tmux"
" set Scheme indentation lower
autocmd FileType scheme setlocal softtabstop=2 shiftwidth=2 tabstop=2
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

let g:rainbow_active = 1

" don't use, but useful to have documented:
" set cursorline " highlight current line


" idk:
"highlight Normal ctermbg=LightGray 
"syntax enable " enables syntax highlighting; not sure why this is disabled but it works anyway?

" FROM good vimrc
" CtrlP settings
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


" --- NOTES ---
" C-[ is escape.... ugh... 
"   also, somehow M-; is still getting through???
" mapleader is ,
" useful page: https://dougblack.io/words/a-good-vimrc.html
"   most keybindings are from here
" RETURN TO:
"   silver searcher? see good vimrc ^ for it
"   also ctrl-p. I should get both of these

