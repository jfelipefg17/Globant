Algoritmo capicua
	Definir num, cen, uni Como Entero
	Escribir "Ingrese un n�mero de 3 cifras"
	Leer num
	cen = trunc(num/100)
	uni = trunc((num%100)%10)
	Si cen == uni Entonces
		Escribir "El n�mero es capic�a"
	SiNo
		Escribir "El n�mero no es capic�a"
	Fin Si
FinAlgoritmo
