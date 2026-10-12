Algoritmo Calculo_Nota
	Definir NOTA_MINIMO Como Entero
	Definir parcial1, parcial2, examenfinal, nota_final Como Real
	Definir aprobado Como Logico
	NOTA_MINIMO <- 61
	Escribir  "primer parcial (0 a 30):"
	leer parcial1
	Escribir  "segundo parcial (0 a 30):"
	Leer  parcial2
	Escribir "examen final (0 a 40):"
	Leer examenfinal
	
	nota_final <- parcial1 + parcial2 + examenfinal
	aprobado <- nota_final >= NOTA_MINIMO
	Escribir "nota_final: ", nota_final
	Escribir  "aprobado: " , aprobado
FinAlgoritmo
