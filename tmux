# Personalizar tema
# https://www.onwebsecurity.com/configuration/customize-and-theme-tmux-the-easy-way.html
run-shell "tmux source-file ~/.config/tmux/themes/tmux_\${TMUX_THEME:-default}.conf"
