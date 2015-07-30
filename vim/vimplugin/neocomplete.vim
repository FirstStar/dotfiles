let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif

let g:neocomplete#skip_auto_completion_time = ""
let g:neocomplete#keyword_patterns._ = '\h\w*'

if !exists('g:neocomolete#force_omni_input_patterns')
	let g:neocomolete#force_omni_input_patterns = {}
endif
let g:neocomolete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

let g:neocomolete#force_overwrite_completefunc = 1

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
