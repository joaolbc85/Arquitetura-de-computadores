#programa 1 - Impressão de uma string - "Hello, world!"

.data #área de declaração de variáveis
msg: .asciiz "Hello, World !!!"

.text #Área para a escrita do programa:

#impressão da string
	li $v0, 4 #impressão de char e strings
	la $a0, msg #Transfere para o registrador
	syscall #Executar
	
#Finalizar o programa(opcional)	
	li $v0, 10
	syscall
	

