#programa 2 - impressão de um número

.data #área para declarar variáveis:
 num: .word 45
 

.text
li $v0, 1
lw $a0, num
syscall
