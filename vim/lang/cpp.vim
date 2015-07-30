augroup cpp-path
	autocmd!
	autocmd FileType cpp setlocal path+=.,/usr/local/include/boost,/opt/intel/tbb/include,/opt/intel/ipp/include,/opt/intel/mkl/include,/usr/local/opt/qt5/include/QtCore,/usr/local/opt/qt5/include/QtOpenGL,/usr/local/opt/qt5/include/QtGui
augroup END

function! s:cpp()
	setlocal noexpandtab
	setlocal matchpairs+=<:>
endfunction

augroup vimrc-cpp
	autocmd FileType cpp call s:cpp()
augroup END



