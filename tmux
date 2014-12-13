# ステータスバーを設定する
## 左パネルを設定する
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
## 右パネルを設定する
set -g status-right "#[fg=cyan][%Y-%m-%d(%a) %H:%M]"
## ステータスバーのUTF-8サポートを有効にする
set -g status-utf8 on
## リフレッシュの間隔を設定する(デフォルト 15秒)
set -g status-interval 60
## ウィンドウリストの位置を中心寄せにする
set -g status-justify centre
## ヴィジュアルノーティフィケーションを有効にする
setw -g monitor-activity on
set -g visual-activity on
## ステータスバーを上部に表示する
set -g status-position top

# コピーモードを設定する
## viのキーバインドを使用する
setw -g mode-keys vi
## クリップボード共有を有効にする
set-option -g default-command "reattach-to-user-namespace -l zsh"