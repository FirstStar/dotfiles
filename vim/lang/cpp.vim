function! s:cpp()
	setlocal path+=/usr/local/Cellar/boost/1.57.0/include
	setlocal matchpairs+=<:>
endfunction

augroup vimrc-cpp
	autocmd!
	autocmd FileType cpp call s:cpp()
augroup END

augroup cpp-path
	autocmd!
	autocmd FileType cpp setlocal path=.,/usr/include/c++,/usr/local/Cellar/boost/1.57.0/include
augroup END


