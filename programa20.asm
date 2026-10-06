#programa 20 - jal, jr $ra e j - aprovado ou reprovado

.data
 msgNota1: .asciiz "Digite a primeira nota: "
 msgNota2: .asciiz "Digite a segunda nota: "
 msgNota3: .asciiz "Digite a terceira nota: "
 msgMedia: .asciiz "\nA média obtida é: "
 msgAprovado: .asciiz "\NAPROVADO"
 msgReprovado: .asciiz "\NREPROVADO"
 msgContinua: .asciiz "\nDeseja continuar? (1-Sim \ outro - não " 
 qtdProvas: .float 3.0
 mediaMinima: .float 5.0
 msgFim: .asciiz "\nFim do programa."
 
 .text
 
laço:
 
 jal ler_notas
 jal calcula_media
 jal resultado
 
 ler_notas:
 
 #solicita a primeira nota
 li $v0, 4
 la $a0, msgNota1
 syscall
 
 #Vai ler a primeira nota:
 li $v0, 6 #lê e armazena do tipo float e armazena em $f0
 syscall
 
 mov.s $f1, $f0

 #solicita a segunda nota
 li $v0, 4
 la $a0, msgNota2
 syscall
 
 #Vai ler a segunda nota:
 li $v0, 6 #lê e armazena do tipo float e armazena em $f0
 syscall
 
 mov.s $f2, $f0  
 
 #solicita a terceira nota
 li $v0, 4
 la $a0, msgNota3
 syscall
 
 #Vai ler a terceira nota:
 li $v0, 6 #lê e armazena do tipo float e armazena em $f0
 syscall
 
 mov.s $f3, $f0  
 
 jr $ra
 
 
calcula_media:
 add.s $f4, $f1, $f2
 add.s $f5, $f4, $f3
 l.s $f6, qtdProvas
 div.s $f7, $f5, $f6
 
 #Imprime a mensagem da média
 li $v0, 4
 la $a0, msgMedia 
 
 #Imprime o valor da media
 
 li $v0, 2
 mov.s $f12, $f7
 syscall
 
 jr $ra
 
 resultado:
 
 l.s $f8, mediaMinima
 
 #Condicional
  c.lt.s $f7, $f8
  
   #Condição atendida(true)
   bc1t reprovado
   
   #Condição não atendida(false)
   bc1f aprovado
   
   #criação das labels
   
    reprovado:
     li $v0, 4
     la $a0, msgReprovado
     syscall
     
     j continua
    
   aprovado:
   
     li $v0, 4
     la $a0, msgAprovado
     syscall
     
     j continua
     
  continua:
   #pergunta se quer conitnuar
    li $v0, 4
    la $a0, msgContinua
    syscall
    
   # Lê a resposta:
     li $v0, 5
     syscall
     
   #condicional
    bne $v0, 1, sair
    
     #Condição não atendida:
      j laço

     #Condição atendida: 
       sair:
        #Pergunta se quer continuar
         li $v0, 4
         la $a0, msgFim
         syscall
         
         #Finaliza o programa:
          li $v0, 10
          syscall
