# Vim cheatsheet
https://devhints.io/vim

# Editar arquivo somente de leitura
:w !sudo tee %

# Substituir espaços por CR
:%s/ /`<CTRL-V><CR>`/g

# `<CTRL-V>`: insere o caractere literal

# Deletar linhas contendo um padrão
:g/pattern/d

# Deletar linhas que não contenham um padrão
:g!/pattern/d
:v/pattern/d

# Depois de pular para definição com `gd` volta para a posição inicial
`<CTRL-T>`

# Volta à posição anterior do cursor
# atua sobre a jumplist
`<CTRL-O>`

# Encontrar mapeamentos do modo de comando
:h cmdline-editing

# Adicionar texto ao fim de todas as linhas do arquivo
:%s/$/,/

# Indentação no modo de inserção
ctrl-t - Indent the current line
ctrl-d - Backdent the current line

# delete in insert mode - build edits you can repeat with dot
• ctrl-h – Delete previous char
• ctrl-w – Previous word
• ctrl-u – Entire line (except indent)

# Replace across multiple files in Vim, without any plugins
• :args path/*
• :argdo %s/some/sub/g
• :argdo update

# Show keybindings
• :filter pattern imap (insert mappings)
• :filter pattern nmap (normal)

# Remove Trailing Whitespace
• :%s/\s\+$//e

# Repeat the last substitution in Vim:
• :& - repeat but reset flags
• :&& - repeat and keep flags
• :%& - repeat on file, reset flags
• :%&& - repeat on file, keep flags

# Cálculos no modo de inserção
• <Ctrl-r> =
