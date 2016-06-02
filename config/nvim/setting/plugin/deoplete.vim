let s:hooks = neobundle#get_hooks("deoplete.nvim")
function! s:hooks.on_source(bundle)
	let g:deoplete#enable_at_startup = 1
endfunction
