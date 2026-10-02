#programa 3 - solicitar números

.data
SolicitaNum: .asciiz "Digite um número inteiro: "
MsgNum: .asciiz "O número digitado é: "

.text
li $v0, 4 #avisa a impressão de um caractere ou string
la $a0, SolicitaNum
syscall


li $v0, 5
syscall #executa

move $t0, $v0

li $v0, 4 #avisa a impressão de um caractere ou string
la $a0, msgNum
syscall

#imprimir o numero digitado

li $v0, 1 #imprimir um número inteiro
move $a0, $t0

li $v0, 10
syscall
