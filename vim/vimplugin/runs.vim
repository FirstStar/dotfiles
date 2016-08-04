"QUICKRUN AND WATCHDOG SETTINGS
let g:quickrun_config = {
\	"_" : {
\		"hook/close_unite_quickfix/enable_hook_loaded" : 1,
\		"hook/unite_quickfix/enable_failure" : 1,
\		"hook/close_quickfix/enable_exit" : 1,
\		"hook/close_buffer/enable_failure" : 1,
\		"hook/close_buffer/enable_empty_data" : 1,
\		"outputter" : "multi:buffer:quickfix",
\		"hook/neko/enable" : 1,
\		"hook/neko/wait" : 20,
\		"hook/close_quickfix/enable_success" : 1,
\		"outputter/buffer/split" : ":botright 8sp",
\		"hook/time/enable" : 1,
\		"runner" : "vimproc",
\		"runner/vimproc/updatetime" : 60,
\	},
\}

let g:quickrun_config = {
\	"cpp/clang" : {
\		"command" : "clang++",
\		"cmdopt" : "-Wall -std=c++11",
\	},
\	"cpp/icc" : {
\		"command" : "icpc",
\		"cmdopt" : "-std=c++1y",
\	}
\}

" ----- qml -----
let g:quickrun_config['qml/watchdogs_checker']={
\	'type'	:	'watchdogs_checker/qmlscene',
\}

let g:quickrun_config['qml/qmlscene'] = {
\	'command'	:	'qmlscene',
\	'exec'		:	'%c %s:p',
\	'cmdopt'	:	'--quit',
\	'runner'	:	'vimproc',
\ }



call watchdogs#setup(g:quickrun_config)
let g:watchdogs_check_BufWritePost_enable = 1

