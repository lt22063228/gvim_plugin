" Font, color scheme and toolbar {{{
if has('gui_running')
  set guioptions-=T  " no toolbar
"  colorscheme elflord
  set lines=60 columns=108 linespace=0
  if has('gui_win32')
    set guifont=Source\ Code\ Pro
  else
" set guifont=DejaVu\ Sans\ Mono\ 10
    set guifont=Source\ Code\ Pro
  endif
endif
" }}}

" Plugin manager function call {{{
execute pathogen#infect()
" }}}

" Color theme setting {{{
syntax enable
set background=dark
 " colorscheme elflord
  colorscheme gruvbox
filetype plugin indent on
" }}}


" Vimscript file settings -------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END	
" }}}

" For Indent Highlight, vertical line indentation {{{
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
" }}}

set nu 

" EasyMotion Setting {{{

let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
" }}}

" Vim-Repeat {{{
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
" }}}

" delimitMate {{{
let delimitMate_expand_space = 1
" }}}

" Unite.vim {{{
nnoremap <C-l> :Unite -start-insert -auto-preview file file_rec/async<cr>
nnoremap <space>/ :Unite -auto-preview grep:.<cr>
"nnoremap <C-;> :Unite line<cr>
"}}}

" tagbar {{{
nnoremap <tab> :TagbarToggle<cr>
"}}}

" Systastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" vimshell {{{
nnoremap <C-s> :VimShellPop<cr>
" }}}
