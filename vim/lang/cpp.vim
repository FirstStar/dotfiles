augroup cpp-path
	autocmd!
	autocmd FileType cpp setlocal path+=.,/usr/local/include/boost,/opt/intel/tbb/include,/opt/intel/ipp/include,/opt/intel/mkl/include
augroup END

function! s:cpp()
	setlocal noexpandtab
	setlocal matchpairs+=<:>
endfunction

augroup vimrc-cpp
	autocmd FileType cpp call s:cpp()
augroup END



