#Programa 0 - impressão de um caractere

.data #área de declaração de variáveis
letra: .byte 'A' 

.text #área para a escrita do programa

#imprimir um caractere
	li $v0, 4 #imprime um caractere ou string
	la $a0, letra #transfere para o registrador $a0 o endereço da variável
	syscall #Executar
	
#finalizar programa(opcional)
	li $v0, 10
	syscall #Executar
