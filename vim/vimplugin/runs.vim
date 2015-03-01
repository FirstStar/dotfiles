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
\	"cpp/clang/11" : {
\		"command" : "clang++",
\		"cmdopt" : "-Wall -std=c++11",
\	},
\	"cpp/clang/1y" : {
\		"command" : "clang++",
\		"cmdopt" : "-Wall -std=c++1y",
\	},
\	"cpp/opencv" : {
\		"command" : "clang++",
\		"cmdopt" : "-Wall -std=c++11 -I/usr/local/include/opencv2 -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d - lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann",
\	},
\	"clang/opencl" : {
\		"command" : "clang",
\		"cmdopt" : "-Wall -framework OpenCL",
\	},
\	"cpp/opencl" : {
\		"command" : "clang++",
\		"cmdopt" : "-Wall -std=c++11 -framework OpenCL",
\	}
\}

call watchdogs#setup(g:quickrun_config)
let g:watchdogs_check_BufWritePost_enable = 1
