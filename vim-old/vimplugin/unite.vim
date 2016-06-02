" insert mode enable
let g:unite_enable_start_insert=1

" sourcesを開いているディレクトリとする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
