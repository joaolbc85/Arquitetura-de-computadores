#Programa 9 - verifica se é positivo, negativo ou igual a zero

.data
 SolicitaNum: .asciiz "Digite um número: "
 msgPositivo: .asciiz "O número é positivo"
 msgNegativo: .asciiz "O número é negativo"
 msgZero: .asciiz "O número é igual a zero"

.text

 #solicita o número:
  li $v0, 4
  la $a0, SolicitaNum
  syscall
  
  #leitura do número
  li $v0, 5
  syscall
  
  #condicionais
  bgt $v0, 0, positivo # se o $v0 > 0, executa a label "positivo"
  blt $v0, 0, negativo #Se $v0 < 0 executa a label "negativo"
  beq $v0, 0, zero #se $v0 = 0, executa a label "zero"
  
  #criação das labels
   positivo:
    li $v0, 4
    la $a0, msgPositivo
    syscall
    
    #Finaliza o programa(obrigatório ou as outras instruções serão executadas)
    li $v0, 10
    syscall
  
    
  #criação das labels
   negativo:
    li $v0, 4
    la $a0, msgNegativo
    syscall
    
    #Finaliza o programa(obrigatório ou as outras instruções serão executadas)
    li $v0, 10
    syscall  
    
  #criação das labels
   zero: 
    li $v0, 4
    la $a0, msgZero
    syscall
    
    #Finaliza o programa(obrigatório ou as outras instruções serão executadas)
    li $v0, 10
    syscall  
  
  
