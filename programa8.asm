#Programa 8 - operações aritiméticas do tipo float - parte 2

#solicitar 2 valores, realizar operações aritméticas e exibir os resultados:

.data
 SolicitaN1: .asciiz "Digite um primeiro número: "
 SolicitaN2: .asciiz "Digite um segundo número: "
 msgAdd: .asciiz "\nO valor da adição é: "
 msgSub: .asciiz "\nO valor da subtração é: "
 msgMul: .asciiz "\nO valor da multiplicação é: "
 msgDiv: .asciiz "\nO valor da divisão é: "

.text

#solicita o primeiro número:
  li $v0, 4 #imprime char e strings
  la $a0, SolicitaN1 #Transfere p/ o $a0 o endereço da viarável "solicitaN1":
  syscall #executa
  
 #leitura do primeiro número:
   li $v0, 6 #lê um número do tipo float
   syscall #executa
   
   mov.s $f1, $f0 #Copia p/ o $f1 o valor armazenado em $f0
  
#solicita o segundo número:
  li $v0, 4 #imprime char e strings
  la $a0, SolicitaN2 #Transfere p/ o $a0 o endereço da viarável "solicitaN2":
  syscall #executa
  
 #leitura do segundo número:
   li $v0, 6 #lê um número do tipo float
   syscall #executa
   
   mov.s $f2, $f0 #Copia p/ o $f1 o valor armazenado em $f0
 

#operações aritméticas:
  add.s $f3, $f1, $f2
  sub.s $f4, $f1, $f2
  mul.s $f5, $f1, $f2
  div.s $f6, $f1, $f2
  
  #imprime a mensagem da adição:
  li $v0, 4
  la $a0, msgAdd
  syscall
  #imprime o valor da adição:
  li $v0, 2
  mov.s $f12, $f3 #copia para lo $f12 o valor de $f3 p/ impressão
  syscall
  
  #imprime a mensagem da Subtração:
  li $v0, 4
  la $a0, msgSub
  syscall
  #imprime o valor da Subtração:
  li $v0, 2
  mov.s $f12, $f4 #copia para lo $f12 o valor de $f4 p/ impressão
  syscall
  
    #imprime a mensagem da multiplicação:
  li $v0, 4
  la $a0, msgMul
  syscall
  #imprime o valor da multiplicação:
  li $v0, 2
  mov.s $f12, $f5 #copia para lo $f12 o valor de $f5 p/ impressão
  syscall
  
    #imprime a mensagem da divisão:
  li $v0, 4
  la $a0, msgDiv
  syscall
  #imprime o valor da divisão:
  li $v0, 2
  mov.s $f12, $f6 #copia para lo $f12 o valor de $f4 p/ impressão
  syscall
