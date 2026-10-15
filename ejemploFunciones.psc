SubProceso MostrarResultado(x)
	
	Escribir "El Resultado es:   ", x
	
FinSubProceso

Funcion resultadoSuma <- suma(a,b)
	Definir resultadoSuma Como Entero
	resultadoSuma<- a+b 
	
FinFuncion

Algoritmo ejemploFunciones
	
	Definir a,b,c como entero
	Escribir "ingrese un digito"
	leer a
	Escribir "ingrese un digito"
	leer b
	
	c <- suma(a,b)
	MostrarResultado(c)
	
	
FinAlgoritmo
