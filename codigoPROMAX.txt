//Daniel Perez 26-359-0028
//Samuel Vasquez 26-359-0094
//Rafael Martinez 26-359-0093
//Jose Herrera 26-359-0092
//Aminadab Diab 26-108-0017
//Wilson Lopez 24-000-0115

Algoritmo GestionDeCalificaciones
	
    Definir seleccion, indice, totalAprobados, estudianteElegido Como Entero
    Definir calificaciones, totalNotas, promedioGeneral, calificacionMayor, puntosExtra Como Real
    Definir notasRegistradas Como Logico
	
    Dimension calificaciones[5]
	
    puntosExtra <- 20
    notasRegistradas <- Falso
	
    Repetir
		
        Escribir "===== CONTROL ACADEMICO FE729 ====="
        Escribir "1. Ingresar Notas                 ="
        Escribir "2. Mostrar notas y categorias     ="
        Escribir "3.  Estadisticas                  =" 
        Escribir "4. Sumar puntos extra             ="
        Escribir "5. Salir                          ="
        Escribir "==================================="
        Escribir "Seleccione una alternativa:"
        Leer seleccion
		
        Segun seleccion Hacer
			
            1:
                Escribir "===== REGISTRO ACADEMICO ====="
				
                Para indice <- 1 Hasta 5 Hacer
					
                    Escribir "Digite la calificacion del alumno ", indice, ":"
                    Leer calificaciones[indice]
					
                    Mientras calificaciones[indice] < 0 O calificaciones[indice] > 100 Hacer
                        Escribir "El valor ingresado no es valido."
                        Escribir "Introduzca una nota desde 0 hasta 100:"
                        Leer calificaciones[indice]
                    FinMientras
					
                FinPara
				
                notasRegistradas <- Verdadero
				
                Escribir "Las calificaciones se almacenaron exitosamente."
                Escribir " "
                Escribir "Pulse una tecla para regresar al menu."
                Esperar Tecla
				
            2:
                Si notasRegistradas = Falso Entonces
					
                    Escribir "Aun no se han registrado calificaciones."
                    Escribir " "
                    Escribir "Pulse una tecla para regresar al menu."
                    Esperar Tecla
					
                Sino
					
                    Escribir "===== CONSULTA DE RESULTADOS ====="
					
                    Para indice <- 1 Hasta 5 Hacer
						
                        Si calificaciones[indice] >= 90 Entonces
                            Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos - Sobresaliente"
                        Sino
                            Si calificaciones[indice] >= 80 Entonces
                                Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos - Muy satisfactorio"
                            Sino
                                Si calificaciones[indice] >= 70 Entonces
                                    Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos - Satisfactorio"
                                Sino
                                    Si calificaciones[indice] >= 61 Entonces
                                        Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos - Acreditado"
                                    Sino
                                        Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos - No acreditado"
                                    FinSi
                                FinSi
                            FinSi
                        FinSi
						
                    FinPara
					
                    Escribir " "
                    Escribir "Pulse una tecla para continuar."
                    Esperar Tecla
					
                FinSi
				
            3:
                Si notasRegistradas = Falso Entonces
					
                    Escribir "Primero debe completar el registro de notas."
                    Escribir " "
                    Escribir "Pulse una tecla para continuar."
                    Esperar Tecla
					
                Sino
					
                    totalNotas <- 0
                    totalAprobados <- 0
                    calificacionMayor <- calificaciones[1]
					
                    Para indice <- 1 Hasta 5 Hacer
						
                        totalNotas <- totalNotas + calificaciones[indice]
						
                        Si calificaciones[indice] > calificacionMayor Entonces
                            calificacionMayor <- calificaciones[indice]
                        FinSi
						
                        Si calificaciones[indice] >= 61 Entonces
                            totalAprobados <- totalAprobados + 1
                        FinSi
						
                    FinPara
					
                    promedioGeneral <- totalNotas / 5
					
                    Escribir "===== RESUMEN ACADEMICO ====="
                    Escribir "Media de las calificaciones: ", promedioGeneral
                    Escribir "Calificacion maxima obtenida: ", calificacionMayor
                    Escribir "Cantidad de alumnos aprobados: ", totalAprobados
					
                    Escribir " "
                    Escribir "Pulse una tecla para volver."
                    Esperar Tecla
					
                FinSi
				
            4:
                Si notasRegistradas = Falso Entonces
					
                    Escribir "No existen calificaciones para modificar."
                    Escribir " "
                    Escribir "Pulse una tecla para continuar."
                    Esperar Tecla
					
                Sino
					
                    Escribir "===== BONIFICACION ACADEMICA ====="
                    Escribir "Cada seleccion dispone de 20 puntos adicionales."
                    Escribir " "
                    Escribir "Listado de alumnos y sus notas actuales:"
					
                    Para indice <- 1 Hasta 5 Hacer
                        Escribir "Opcion ", indice, " - Alumno ", indice, ": ", calificaciones[indice]
                    FinPara
					
                    Escribir "Indique el numero del alumno que recibira la bonificacion:"
                    Leer estudianteElegido
					
                    Mientras estudianteElegido < 1 O estudianteElegido > 5 Hacer
                        Escribir "La seleccion esta fuera del rango permitido."
                        Escribir "Elija un numero comprendido entre 1 y 5:"
                        Leer estudianteElegido
                    FinMientras
					
                    calificaciones[estudianteElegido] <- calificaciones[estudianteElegido] + puntosExtra
					
                    Si calificaciones[estudianteElegido] > 100 Entonces
                        calificaciones[estudianteElegido] <- 100
                    FinSi
					
                    Escribir "La bonificacion se aplico correctamente."
                    Escribir "Listado actualizado de calificaciones:"
					
                    Para indice <- 1 Hasta 5 Hacer
                        Escribir "Alumno ", indice, ": ", calificaciones[indice], " puntos"
                    FinPara
					
                    Escribir " "
                    Escribir "Pulse una tecla para volver al menu."
                    Esperar Tecla
					
                FinSi
				
            5:
                Escribir "Cerrando la aplicacion. Hasta pronto."
				
            De Otro Modo:
                Escribir "La alternativa elegida no existe."
                Escribir "Seleccione una opcion disponible en el menu."
                Escribir " "
                Escribir "Pulse una tecla para intentarlo nuevamente."
                Esperar Tecla
				
        FinSegun
		
    Hasta Que seleccion = 5
	
FinAlgoritmo