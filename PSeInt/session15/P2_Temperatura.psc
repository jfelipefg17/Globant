SubProceso TemperaturaMedia(i Por Valor, tMax Por Referencia, tMin Por Referencia, Tmedia Por Referencia)
	
	Escribir "Ingrese la temperatura m�xima del d�a ", i, ":"
	Leer tMax
	Escribir "Ingrese la temperatura m�nima del d�a ", i, ":"
	Leer tMin
	tMedia = (tMax + tMin) / 2
	
FinSubProceso		

Algoritmo P2_Temperatura
	
	Definir tMax, tMin, Tmedia Como Real
	Definir n, i Como Entero
	
	Escribir "�Cu�ntos d�as va ingresar?"
	Leer n
	
	i = 1
	
	Hacer 
		TemperaturaMedia(i, tMax,tMin, tMedia)
		Escribir "La temperatura media del d�a ", i , " es: ", tMedia
		Escribir ""
		i = i + 1
	Mientras Que i = n

FinAlgoritmo
