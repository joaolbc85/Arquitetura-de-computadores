#Programa 15 - Incrementa até 10 e finaliza o programa

.data
 espaco: .asciiz " "
 msgFim: .asciiz "\nFim do programa."

.text

 li $t0, 0
 
 enquanto:
 
 # Condição
   beq $t0, 10, saida
   
   # condição não atendida
     addi $t0, $t0, 1
     
     # imprimir o número
       li $v0, 1
       move $a0, $t0
       syscall
       
       #imprime um espaço entre os números
        li $v0, 4
        la $a0, espaco
        syscall
        j enquanto
  
   
   #condição atendida
    saida:
     
     #imprime a mensagem de final do programa
      li $v0, 4
      la $a0, msgFim
      syscall
      
      # Finalização do programa
      li $v0, 10 #opicional
      syscall
