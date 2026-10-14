Algoritmo ValiacionNotas
	
	Definir datosok Como Logico
	Definir parcial1 Como Entero
	
	Escribir "Ingrese nota para el primer parcial (0-100)"
	Leer parcial1
	
	datosok <- (parcial1 >= 0) y (parcial1 <= 100)
	Escribir "La nota que ingreso es: " , parcial1, " Es valida: " , datosok
	
FinAlgoritmo
