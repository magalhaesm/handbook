# Manual
info gdb

# Variáveis no escopo local
info locals
info variables    # variáveis declaradas fora do escopo atual
info functions    # nomes e tipos de dados de todas as funções definidas
info b            # lista todos dos breakpoints

# Compilação para depuração
gcc -Wall -g program.c      # Mantém identificadores e símbolos
gdb --args a.out arg1 arg2  # Argumentos por linha de comando

# Atualizar a tela: (ou CTRL+l)
refresh

# Executar o programa
run

# Ver o código
layout src
layout next

# Definir breakpoint: pode ser uma linha, nome de função, etc.
break POINT

# Apagar breakpoint
clear POINT
delete POINT

# Apagar todos os breakpoints
delete

# Definir argumentos
set args arg1

# Exibir a pilha de chamadas
# Um backtrace é um resumo de como seu programa chegou onde está.
backtrace full

# Mover-se pela pilha de chamadas
up
down

# Próxima linha: (n para abreviar)
next

# Continuar: (até o próximo breakpoint)
continue

# Mostrar o valor de uma variável sempre que o programa fizer uma parada
display VARIABLE

# Parar de mostrar o valor de uma variável
undisplay VARIABLE

# Exibe uma vez o valor de uma variável
print VARIABLE

# Exibe um array:
print *arr@len

# Inspecionar uma variável
watch VAR                 # para quando VAR é modificada
watch -l VAR              # inspeciona o local
watch VAR if VAR > 10     # inspeção condicional

# Habilitar/desabilitar interface
tui enable/disable
ctrl-x + a

# Depurar processo filho
set follow-fork-mode child

rwatch VAR      # parar que var for lida

# ----------------------------------------------------
Relevant gdb commands I've gathered over time:

break funcName				//Set breakpoint at function funcName (short: b funcName)
break file::line			        //Set breakpoint at line in file
layout next					//Cycle through the layouts of gdb
p var 						//Print the value of variable var
p var = value 			        	//Force set value to a var
run 						        //Start the program
start 						//Synonymous to (b main && run). Puts temporary b at main
next 						//Execute the current line in source (short: n)
step 						//Step into function call at current line (short: s)
finish						//Finish the execution of current function (short: fin)
continue					//Resume execution (After a breakpoint) (short: c)
refresh 					        //Repaint the interface (To fix corrupted interface)
shell cmd 					//Run shell command cmd from gdb prompt
python gdb.execute(cmd)		//Run a gdb command cmd from python prompt
set print pretty on			//Enable pretty printing
							  (Put in ~/.gdbinit)
$ gdb -c core.num			//Examine the dumped core file from a SIGSEGV(shell command)
break _exit 				        //Breakpoint at exit of program
whatis expr					//Print datatype of expr
ptype expr					//Detailed print of datatype of expr
delete						//Delete all breakpoints
delete breakpoint_no		        //Delete breakpoint breakpoint_no
command breakpoint_no		//Run user listed commands when breakpoint is hit
							  (End list of commands with 'end')
file executable 			        //Load the executable for debugging from inside gdb
quit						        //Quit (short: q)
