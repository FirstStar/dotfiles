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
\		"runner" : "vimproc",
\		"runner/vimproc/updatetime" : 60,
\	},
\}

" swift
let g:quickrun_config = {
	\	"swift" : {
	\	"command" : "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift",
	\	"cmdopt" : "",
	\	"hook/time/enable" : 1,
	\	},
\}


call watchdogs#setup(g:quickrun_config)
let g:watchdogs_check_BufWritePost_enable = 1
