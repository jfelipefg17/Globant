//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
Funcion  retorno <- EsPrimo (num1)
	Definir retorno,i Como Entero
	retorno = 0
	para i = 1 hasta num1 Con Paso 1 Hacer
		si num1 % i == 0 Entonces
			retorno = retorno +1
		FinSi
		
		
	FinPara
	
Fin Funcion

Algoritmo NumeroPrimo
	Definir num1 Como entero
	Escribir "Ingrese el n�mero"
	Leer num1
	
	si EsPrimo(num1) = 2 entonces 
		Escribir "El n�mero ingresado es primo"
	SiNo
		Escribir "El n�mero ingresado no es primo"
	FinSi
	
	
FinAlgoritmo