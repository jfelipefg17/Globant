////Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas) que
////tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
////Por ejemplo:
////	2 7 6
////	9 5 1 
////	4 3 8 
////En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
////algoritmo que compruebe si una matriz de datos enteros es m�gica o no, y en caso de que
////sea m�gica escribir la suma. Adem�s, el programa deber� comprobar que los n�meros
////introducidos son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el tama�o de la
////matriz que no debe superar orden igual a 10.
Algoritmo sin_titulo
	
	definir matriz como entero
	dimension matriz(3,3)
	
	matriz(0,0) = 2
	matriz(1,0) = 9
	matriz(2,0) = 4
	matriz(0,1) = 7
	matriz(1,1) = 5
	matriz(2,1) = 3
	matriz(0,2) = 6
	matriz(1,2) = 1
	matriz(2,2) = 8
	
	print(matriz)
	
FinAlgoritmo


subproceso print(matriz Por Referencia)
	definir i,j,num como entero 
	
	si ans == verdadero entonces 
		
	FinSi
	
FinSubProceso

