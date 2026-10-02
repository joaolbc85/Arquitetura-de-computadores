#Programa 11 - verifica maior ou menor de idade

.data
 SolicitaIdade: .asciiz "DIgite sua idade: "
 msgMaior: .asciiz "Maior de idade"
 msgMenor: .asciiz "Menor de idade"
 
.text

 #solicita idade
  li $v0, 4
  la $a0, SolicitaIdade
  syscall
  
 #leitura de idade
  li $v0, 5
  syscall
  
 #Condicional
  bge $v0, 18, maior
  
  #Condicional não atendida:
   li $v0, 4
   la $a0, msgMenor
   syscall
   
    li $v0, 10 #obrigatório
    syscall
   
  #condicional atendida
   maior:
    li $v0, 4
    la $a0, msgMaior
    syscall
    
    li $v0, 10 #opcional quando não tiver nada abaixo
    syscall
  
  
