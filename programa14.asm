#Programa 14 - Encerra quando digitado zero:

.data
 SolicitaNum: .asciiz "Digite um número diferente de zero: "
 msgFim: .asciiz "Zero digitado. Fim do programa."
 
.text
 loop:
  #Solicita o número
   li $v0, 4
   la  $a0, SolicitaNum
   syscall
   
  #Lê o número digitado
  li $v0, 5
  syscall
  #condição 
  beq $v0, $zero, fim
  
  # Condição Não atendida 
   j loop 
  
  #Condição atendida
  fim:
   #imprime a mensagem de fim do programa
    li $v0, 4
    la $a0, msgFim
    syscall
    
    li $v0, 10 # Opicional
    syscall
