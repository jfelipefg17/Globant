//va a ser una matr�z de n*m, se va a llenar de forma aleatoria desde (0,0) -- (n-3,m-3)
// a) total de ventas de cada semana ser� la fila n-2, se calcular� haciendo la sumatoria de la columna desde 0 hasta n-3
// b) total de ventas de cada producto ser� la columna m-1, se calcular� haciendo la sumatoria de la columna desde 0 hasta m-2
// c) el producto m�s vendido de la semana se calcular� llevando la cuenta del producto m�s vendido del d�a, se har� un max por columna, y se pondr� en la fila n-1 el �ndice del m�ximo
// la d) no s� si se puede hacer en formato matriz, m�s bien parece como que el d) hace cuenta de todo lo que se necesita saber, imprimiendo la matriz ya se sabr�a 

//----------------------------(a)------------------------------//
SubProceso totalVentasDia(mat Por Referencia, n, m)
	Definir i, j, sumaCol Como Entero
	sumaCol=0
	Para j<-0 Hasta m-2 Hacer
		Para i<-0 Hasta n-3 Hacer
			sumaCol = sumaCol + mat[i,j]
		FinPara
		mat[n-2,j] = sumaCol
		sumaCol=0
	FinPara
FinSubProceso
//Total dias check

//----------------------------(b)------------------------------//
SubProceso totalVentasProducto(mat Por Referencia, n, m)
	Definir i, j, sumaFila Como Entero
	sumaFila=0
	Para i<-0 Hasta n-2 Hacer
		Para j<-0 Hasta m-2 Hacer
			sumaFila = sumaFila + mat[i,j]
		FinPara
		mat[i,m-1] = sumaFila
		sumaFila=0
	FinPara
FinSubProceso
//Total productos check

//----------------------------(c)------------------------------//
SubProceso productoMasVendido(mat Por Referencia, n, m)
	Definir i, j, max, indMax Como Entero
	max=0
	indMax=0
	Para j<-0 Hasta m-1 Hacer
		Para i<-0 Hasta n-3 Hacer
			si mat[i,j]>max Entonces
				max = mat[i,j]
				indMax=i
			FinSi
		FinPara
		mat[n-1,j] = indMax
		max=0
	FinPara
FinSubProceso
//Total productos check

SubProceso llenarMatAleatorio(mat Por Referencia, n, m)
	Definir i, j Como Entero
	Escribir "Ingrese los datos de la matriz"
	Para i<-0 Hasta n-3 Hacer
		Para j<-0 Hasta m-2 Hacer
			mat[i,j] = Aleatorio(10,100)
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatExcel(mat Por Referencia, n, m, filas Por Referencia, nombreCol Por Referencia)
	Definir i, j Como Entero
	Escribir "########" Sin Saltar
	Para j<-0 Hasta m-1
		Escribir nombreCol[j],"--" Sin Saltar
	FinPara
	Escribir ""
	Para i<-0 Hasta n-1 Hacer
		Escribir filas[i] "-" Sin Saltar
		Escribir "[ " Sin Saltar
		Para j<-0 Hasta m-1 Hacer
			Si i<>n-1
				Escribir mat[i,j], " " Sin Saltar
			SiNo
				Escribir filas(mat[i,j]), " " Sin Saltar
			FinSi
			
		FinPara
		Escribir "]" 
	FinPara
FinSubProceso

Algoritmo ex_ej7
	Definir filas, nombreCol Como Caracter
	Definir mat, n, m Como Entero
	n=7
	m=6
	Dimension mat(n,m)
	Dimension filas(n)
	Dimension nombreCol(m)
	//Llenando los vectores
	//Llenando filas
	filas[0]="Producto 1"
	filas[1]="Producto 2"
	filas[2]="Producto 3"
	filas[3]="Producto 4"
	filas[4]="Producto 5"
	filas[5]="Total x dia"
	filas[6]="M�s vendido"
	//Llenando columnas
	nombreCol[0]="Lunes"
	nombreCol[1]="Martes"
	nombreCol[2]="Miercoles"
	nombreCol[3]="Jueves"
	nombreCol[4]="Viernes"
	nombreCol[5]="Total_producto"
	//---//
	llenarMatAleatorio(mat,n,m)
	totalVentasDia(mat, n, m)
	totalVentasProducto(mat, n, m)
	productoMasVendido(mat, n, m)
	imprimirMatExcel(mat,n,m,filas,nombreCol)
FinAlgoritmo

//Una empresa de venta de productos por correo desea realizar una estad�stica de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 d�as h�biles de la semana. Se desea conocer:
//	a) Total de ventas por cada d�a de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto m�s vendido en cada semana.
//	d) El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
//El informe final tendr� un formato como el que se muestra a continuaci�n:

//						Lunes	Martes	Mi�rcoles	Jueves	Viernes	Total_producto
// Producto 1			
// Producto 2			
// Producto 3			
// Producto 4			
// Producto 5			
// Total_dia			
// Producto_m�s_vendido	