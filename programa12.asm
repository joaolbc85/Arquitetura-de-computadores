#programa 12 - verifica aprovado ou reprovado

#P/ser aprovado, a média >= 5

.data
SolcitaNota1: .asciiz "Digite sua primeira nota: "
SolcitaNota2: .asciiz "Digite sua segunda nota: "
SolcitaNota3: .asciiz "Digite sua terceira nota: "
msgMedia: .asciiz "A média alcançada é: "
msgAprovado: .asciiz "Aprovado"
msgReprovado: .asciiz "Reprovado"
qtdProvas: .float 3.0
media: .float 5.0

.text

#Solicita a primeira nota
 li $v0, 4
 la $a0, SolcitaNota1
 syscall
 
#lê a primeira nota
 li $v0, 6
 syscall
 
 mov.s $f1, $f0
 
#Solicita a segunda nota
 li $v0, 4
 la $a0, SolcitaNota2
 syscall
 
#Lê a segunda nota
 li $v0, 6
 syscall
 
 mov.s $f2, $f0
 
#Solicita a terceira nota
 li $v0, 4
 la $a0, SolcitaNota3
 syscall
 
#Lê a terceira nota
 li $v0, 6
 syscall
 
 mov.s $f3, $f0




# Cálculos:
 add.s $f4, $f1, $f2
 add.s $f5, $f4, $f3
 
 l.s  $f6, qtdProvas
 l.s $f7, media

#Cálculo da média
 div.s $f8, $f5, $f6
 
#imprime a mensagem da média

 li $v0, 4
 la $a0, msgMedia
 syscall
 
#imprimir o valor na média
 li $v0, 2
 mov.s $f12, $f8
 syscall
 
#condicional
 c.lt.s $f8, $f7
 
 #verifica a condicional
 bc1t reprovado
 bc1f aprovado
 
 #cria as labels
 
   reprovado:
    li $v0, 4
    la $a0, msgReprovado
    syscall
    
    li $v0, 10
    syscall
    
   aprovado:
    li $v0, 4
    la $a0, msgAprovado
    syscall
    
    li $v0, 10
    syscall
