Algoritmo calculadoraPRO
	
	Definir op Como Entero
	Definir ingreso1, ingreso2, resultado Como Real
	
	Repetir
		
		Escribir "***Caluladora***"
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicacion"
		Escribir "4. Division"
		Escribir "5. Salir"
		leer op
		segun op Hacer
			1:	
				Limpiar Pantalla
				Escribir "Usted eligio la opcion sumar"
				Escribir "Ingrese el primer valor"
				Leer ingreso1
				Escribir "Ingrese el segundo valor"
				Leer ingreso2
				resultado=ingreso1+ingreso2
				Escribir "El resultado de la suma es " , resultado
				
			2: Escribir "Usted eligio la opcion de resta"
				Escribir "Ingrese el primer valor"
				leer ingreso1
				Escribir "Ingresar el segundo valor"
				leer ingreso2
				resultado= ingreso1-ingreso2
				Escribir "El resultado de la resta es " , resultado
				
				
			3:	Escribir "Usted eligio la opcion de Multiplicacion"
				Escribir "Ingrese el primer valor"
				leer ingreso1
				Escribir "Ingresar el segundo valor"
				leer ingreso2
				resultado= ingreso1*ingreso2
				Escribir "El resultado de la multiplicacion es " , resultado
				
			4: Escribir "Usted eligio la opcion de Division"
				Escribir "Ingrese el primer valor"
				leer ingreso1
				Escribir "Ingresar el segundo valor"
				leer ingreso2
				resultado= ingreso1/ingreso2
				Escribir "El resultado de la division es " , resultado	
				
		FinSegun
		
	Hasta Que op = 5
	
	Escribir "Salida exitosa"
	
FinAlgoritmo
