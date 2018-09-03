""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Local Configs                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set colorcolumn=0
if &term =~ 'rxvt-unicode-256color'
 set notermguicolors
 set t_Co=256
endif

" Theme
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
set background=dark

" Lightline
let g:lightline = {'colorscheme' : 'gruvbox'}

" NERDTree
map <F4> :NERDTreeToggle<CR>
map <leader>nt :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tagbar
let g:tagbar_left = 0

" Ctags
set tags+=./tags,tags;

" YouCompleteMe
"let g:loaded_youcompleteme = 1
let g:ycm_show_diagnostics_ui = 0
