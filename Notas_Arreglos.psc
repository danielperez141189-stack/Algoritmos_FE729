Algoritmo Notas_Arreglos
	
	Definir entrada, contador, acumulador Como Entero
	Definir promedio como real
	dimensionar notas[100]
	
	contador <- 0
	acumulador <- 0
	
	Mientras entrada <> -1 Hacer
		
		acumulador <- acumulador + entrada
		contador <- contador + 1
		notas[contador] <- entrada
		Leer entrada
		
	FinMientras
	
	para i <- 1 hasta contador con paso 1 
		Escribir "la nota # " i , " es " , notas[i]
	FinPara
	
	Escribir contador -1
	Escribir acumulador
	
	promedio <- acumulador / (contador -1)
	
	Escribir "el promedio es " , promedio
	
FinAlgoritmo
