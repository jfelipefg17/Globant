Subproceso calcularPisos()
	Definir  ancho, largo, resultado Como real
	
	Escribir "ingrese el ancho pa�o"
	Leer ancho
	
	Escribir "ingrese el largo pa�o"
	Leer largo
	
	resultado = calcularSuperficie(ancho, largo) * 0.1
	Escribir "El Pa�o debe ser de ", resultado, "m2"
	
FinSubProceso