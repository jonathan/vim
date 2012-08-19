set guioptions-=T
set transparency=10

let g:ctrlp_max_height = 12
let g:ctrlp_working_path_mode = 2
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }

let g:ctrlp_map = '<c-t>'
nnoremap <D-F> :Ack<space>

let macvim_hig_shift_movement = 1
autocmd vimenter * NERDTree
