Algoritmo maquinaDeReciclaje
    // Declaraci�n de variables
    Definir usuario, contrasena, opcionMenu Como Caracter
    Definir login Como Logico
    Definir intentos, saldo, botellasIngresadas, peso, valorTotal, valorUnitario Como Entero
    login = falso 
    intentos = 0
    saldo = 0
    
    // Mensaje de bienvenida
    Escribir "Bienvenido a la maquina de reciclaje"
    Escribir "Ingrese su usuario"
    Leer usuario
    
    // Validaci�n del nombre de usuario
    Si usuario = "Albus_D" Entonces
        // Bucle para permitir hasta 3 intentos de contrase�a
        Mientras intentos < 3 y login = falso Hacer
            Escribir "Ingrese la contrase�a"
            Leer contrasena
            intentos = intentos + 1
            
            // Verificaci�n de la contrase�a
            Si contrasena == "caramelosDeLimon" Entonces
                login = Verdadero
            Sino
                Escribir "La contrase�a es incorrecta. Intento", intentos, " de 3"
            Fin Si
        Fin Mientras
    Sino
        Escribir "Usuario incorrecto"
    Fin Si
    
    // Si el usuario y la contrase�a son correctos
    Si login == Verdadero Entonces
        Escribir "Bienvenido ", usuario
        
        // Bucle de men� de opciones principal
        Repetir
            Escribir "Menu de opciones"
            Escribir "1. Ingresar botellas"
            Escribir "2. Consultar saldo"
            Escribir "3. Salir"
            Leer opcionMenu
            
            // Opciones del men�
            Segun opcionMenu hacer
					// Opci�n 1: Ingresar botellas
                "1":
                    Escribir "Ingrese la cantidad de botellas a reciclar"
                    Leer botellasIngresadas
                    valorTotal = 0
                    
                    // Bucle Para ingresar y calcular el valor de cada botella
                    Para i = 1 Hasta botellasIngresadas Hacer
                        peso = Aleatorio(100, 3000) // Genera un peso aleatorio entre 100 y 3000 gramos
                        
                        // Condicional m�ltiple para asignar el valor monetario seg�n el peso
                        Si peso < 500 Entonces
                            valorUnitario = 50
							Sino Si peso <= 1500 Entonces
                            valorUnitario = 125
                        Sino
                            valorUnitario = 200
                        FinSi
                        
                        valorTotal = valorTotal + valorUnitario // Suma el valor de cada botella
                    Fin Para
                    
                    Escribir "El valor total por las botellas es $", valorTotal
                    Escribir "�Desea acreditar este valor a su saldo? (S/N)"
                    Leer respuesta
                    
                    // Condicional para acreditar o devolver el material
                    Si respuesta = "S" o respuesta = "s" Entonces
                        saldo = saldo + valorTotal
                        Escribir "Saldo actualizado: $", saldo
                    Sino
                        Escribir "Devolviendo material"
                    Fin Si
					
					// Opci�n 2: Consultar saldo
                "2":
                    Escribir "Su saldo actual es: $", saldo
					
					// Opci�n 3: Salir
                "3":
                    Escribir "Gracias por usar la m�quina de reciclaje. �Hasta pronto!"
                    Fin Repetir
					
					// Manejo de opci�n no v�lida
                De Otro Modo:
                    Escribir "Opci�n no v�lida. Intente de nuevo."
            Fin Segun
        Hasta Que opcionMenu = "3"
    Fin Si
Fin Algoritmo
