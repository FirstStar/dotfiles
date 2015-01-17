" Lisp...common lisp, scheme, clojure
autocmd BufNewFile,BufRead *.clisp setf filetype=lisp
autocmd BufNewFile,BufRead *.scheme setf filetype=lisp
autocmd BufNewFile,BufRead *.slisp setf filetype=lisp
autocmd BufNewFile,BufRead *.clojure setf filetype=lisp
autocmd BufNewFile,BufRead *.cjr setf filetype=lisp

" C++
autocmd BufNewFile,BufRead *.h setf filetype=cpp
autocmd BufNewFile,BufRead *.hpp setf filetype=cpp
autocmd BufNewFile,BufRead *.m setf filetype=cpp

" C#
autocmd BufNewFile,BufRead *.xaml.cs setf filetype=cs

" Apple Swift
autocmd BufNewFile,BufRead *.swift setf filetype=swift

" Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
