" syntax: vim

" Vim cheatsheet
https://devhints.io/vim

" Editar arquivo somente de leitura
:w !sudo tee %

" Substituir espaços por CR
:%s/ /<CTRL-V><CR>/g

" `<CTRL-V>`: insere o caractere literal

" Deletar linhas contendo um padrão
:g/pattern/d

" Deletar linhas que não contenham um padrão
:g!/pattern/d
:v/pattern/d

" Depois de pular para definição com `gd` volta para a posição inicial
" atua sobre a tagstack
<CTRL-T>

" Volta à posição anterior do cursor
" atua sobre a jumplist
<CTRL-O>

" Encontrar mapeamentos do modo de comando
:h cmdline-editing


vim: ft=vim
