//Daniel perez 26-359-0028
//Jose herrera 26-359-0092
//Rafael Martinez 26-359-0093
//Samuel Vasquez 26-359-0094
//Wilson Lopez 24-000-0115

SubProceso MostrarMenu(op)
	

	Escribir "=======Caluladora========="
	Escribir "=1. Suma                 ="
	Escribir "=2. Resta                ="
	Escribir "=3. Multiplicacion       ="
	Escribir "=4. Division             ="
	Escribir "=5. Salir                ="
	Escribir "=========================="
FinSubProceso

SubProceso MostrarResultado(x)
	
	
	Escribir "El resultado es ", x
	
FinSubProceso

Funcion resultadoSuma <- suma(a,b,c,d)
	Definir resultadoSuma Como Entero
	resultadoSuma<- a+b+c+d 
	
FinFuncion

Funcion resultadoResta <- resta(a,b)
	Definir resultaResta Como Entero
	resultadoResta<- a-b
	
FinFuncion

Funcion resultadoMulti <- multi(a,b,c)
	Definir resultamulti Como Entero
	resultadomulti<- a*b*c
	
FinFuncion

Funcion resultadoDivi <- division(a,b)
	Definir resultaDivi Como Entero
	resultadoDivi<- a/b
	
FinFuncion

Funcion residuo <- resi(z)
	Definir residuo Como Logico
	si z <> 0 Entonces
		residuo <- Verdadero
	Sino 
		residuo <- Falso
		
		Escribir "No es posible realizar la division dentro de 0  "
	FinSi
		
		
	
	
FinFuncion



Algoritmo calculadoraFunciones 
	
	Definir a,b,c,d,resultado,op2 como entero
	Definir op Como Entero
	Repetir
		
	
	MostrarMenu(op)
	Escribir "ingrese su numero de opcion"
	leer op
	
	segun op Hacer
		
		1:
			
			Escribir "ingrese un digito"
			leer a
			Escribir "ingrese un digito"
			leer b
			Escribir "ingrese un digito"
			leer c
			Escribir "ingrese un digito"
			leer d
			
			resultado <- suma(a,b,c,d)
			MostrarResultado(resultado)
			
			
			escribir "desea continuar" 
			Escribir "[1] continuar"
			Escribir "[2] salir"
			leer op2
			si op2 = 1 entonces
				Limpiar Pantalla
				
				sino 
					op <- 5
				FinSi
			
		2:Escribir "Usted eligio la opcion de resta"
			Escribir "Ingrese el primer valor"
			leer a
			Escribir "Ingresar el segundo valor"
			leer b
			resultado= a-b
			resultado <- resta(a,b)
			MostrarResultado(resultado)
			
			escribir "desea continuar" 
			Escribir "[1] continuar"
			Escribir "[2] salir"
			leer op2
			si op2 = 1 entonces
				Limpiar Pantalla
				
			sino 
				op <- 5
			FinSi
			
			
		3:Escribir "Usted eligio la opcion de Multiplicacion"
			Escribir "Ingrese el primer valor"
			leer a
			Escribir "Ingresar el segundo valor"
			leer b
			Escribir "Ingresar el tercer valor"
			leer c
			resultado = a*b*c
			resultado <- multi(a,b,c)
			MostrarResultado(resultado)
			
			
			escribir "desea continuar" 
			Escribir "[1] continuar"
			Escribir "[2] salir"
			leer op2
			si op2 = 1 entonces
				Limpiar Pantalla
				
			sino 
				op <- 5
			FinSi
			
		4:Escribir "Usted eligio la opcion de Division"
			Escribir "Ingrese el primer valor"
			leer a
			Escribir "Ingresar el segundo valor"
			leer b   
			
			Si resi(b) Entonces
				resultado= a/b
				resultado <- division(a,b)
				MostrarResultado(resultado)	
			FinSi
			
			
			
			
			
			escribir "desea continuar" 
			Escribir "[1] continuar"
			Escribir "[2] salir"
			leer op2
			si op2 = 1 entonces
				Limpiar Pantalla
				
			sino 
				op <- 5
			FinSi
		
		
	FinSegun
	

Hasta Que op =5	

Escribir "Salida exitosa"
	
FinAlgoritmo
