#Programa 7 - operações aritiméticas do tipo float - parte 1

.data
num1: .float 4.5
num2: .float 2.3

.text

#Transferir valores de variáveis para registradores

 l.s $f0, num1 #transfere p/ $f0 o valor da variável "num1"
 l.s $f1, num2 #transfere p/ $f1 o valor da variável "num2"

#operações aritméticas
	#soma:
	  add.s $f2, $f0, $f1 
	  
	  
	#subtração:
	  sub.s $f3, $f0, $f1
	  
	#multiplicação:
	mul.s $f4, $f0, $f1
	
	#Divisão
	div.s $f5, $f0, $f1
