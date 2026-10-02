#programa 10 - verifica par ou ímpar

.data
 SolicitaNum: .asciiz "Digite um número: "
 msgPar: .asciiz "O número é par"
 msgImpar: .asciiz "O número é ímpar"
 
 .text
 
 #Solicita o número
  li $v0, 4
  la $a0, SolicitaNum
  syscall
  
  #Lê o número
  li $v0, 5
  syscall
  
  li $t0, 2
  
  div $v0, $t0
  
  mfhi $t1
  
  #Condicional
   beq $t1, $zero, par
   
   #Condição não atendida
    li $v0, 4
    la $a0, msgImpar
    syscall
    
    li $v0, 10
    syscall
   
   #Condição atendida
   par:
    li $v0, 4
    la $a0, msgPar
    syscall   
   
