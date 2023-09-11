Algoritmo registro_Pichichos
	Definir cant_Perros,gr_Perros,op Como Entero; //cant_Perros variable que indica la cantidad de perros a cargar o eliminar
	//gr_Perros indica el total de alimento en gramos que consumen todos los perros //
    Definir peso_Perro Como entero //variable que indica el peso (en kg) del perro que se carga
	//Definir perros_Min,perros_Peq,perros_Med, perros_Gr Como Entero
	perros_Min=0
	perros_Med=0
	gr_Min=70//(gramos que consumo un animal miniatura)
	gr_Peq=140//(gramos que consumo un animal pequeño)
	gr_Med=250//(gramos que consumo un animal mediano)
	gr_Gr=700//(gramos que consumo un animal grande
	
	Repetir //mostrar menu
    Limpiar Pantalla
	Escribir "Menú Principal:"  
	escribir "1.Cargar ingreso de perros"
	escribir "2.Eliminar del registro un/unos perro/s" 
	Escribir "3.Saber la cantidad de perros que hay por tamaño y el Alimento necesario para todos" 
	Escribir "4.Salir"
	//ingresar una Opcion 
	Escribir "Elija una opcion (del 1 al 5)"
	Leer op
	Segun op Hacer
		1://ingresa la cantidad de animales que hay al dia de la fecha y calcula la cant de alimentos
			Escribir "¿Cuántos perros va a cargar?"
			leer valor 
			cant_Perros<-valor
			
			Repetir
				Escribir "Ingrese el peso en kg del perro:" 
				Leer peso_Perro;
				Si peso_Perro<=3 Entonces
					perros_Min=perros_Min+1
				SiNo
					si (3<peso_Perro)&(peso_Perro<=10)
						perros_Peq=perros_Peq+1
					SiNo
						
						si (10<peso_Perro)&(peso_Perro<=20)
							perros_Med=perros_Med+1
						SiNo
							
							Si peso_Perro>20
								perros_Gr=perros_Gr+1
							FinSi
						FinSi
					Fin Si
				FinSi
			
				
				contador=contador+1;
			Hasta Que contador=cant_Perros;
			contador=0
			
		2:
			Escribir "¿Cuántos perros va a eliminar del registro?"
			leer valor 
			cant_Perros<-valor
			
			Repetir
				Escribir "Ingrese el peso del perro:" 
				Leer peso_Perro;
				Si peso_Perro<=3 Entonces
					si perros_Min=0
						Escribir "No hay perros miniatura registrados"
					SiNo
						perros_Min=perros_Min-1
					FinSi
					
				SiNo
					si (3<peso_Perro)&(peso_Perro<=10)
						si perros_Peq=0
							Escribir "No hay perros pequeños registrados"
						SiNo
							perros_Peq=perros_Peq-1
						FinSi
						
					SiNo
						si (10<peso_Perro)&(peso_Perro<=20)
							si perros_Med=0
								Escribir "No hay perros medianos registrados"
							SiNo
								perros_Med=perros_Med-1
							FinSi
							
						SiNo
							Si peso_Perro>20
								si perros_Gr=0
									Escribir "No hay perros grandes registrados"
								SiNo
									perros_Gr=perros_Gr-1
								FinSi
								
							FinSi
						FinSi
					Fin Si
				FinSi
								
				contador=contador+1;
			Hasta Que contador=cant_Perros;
			contador=0
			
		3:
		  //total_Perros=cant_Perros
		    gr_Perros=(perros_Min*gr_Min)+(perros_Peq*gr_Peq)+(perros_Gr*gr_Gr)+(perros_Med*gr_Peq)//calculo de los gramos totales
		   Escribir "La cantidad de perros segun tamaños son:"
		   Escribir "Tamaño miniatura:" perros_Min
		   Escribir "Tamaño pequeño:" perros_Peq
		   Escribir "Tamaño mediano:" perros_Med
		   Escribir "Tamaño grande:" perros_Gr
		   Escribir " "
		   Escribir "La cantidad de alimento que tiene que comprar para todos los perros es"
		   Escribir gr_Perros " " "gramos"
	
	
	  4:
		  Escribir "Gracias, vuelva pronto"
		De otro modo:
			Escribir "Opción no válida"
	Fin Segun
	
	Escribir "Presione enter para continuar"
	Esperar Tecla
Hasta Que op=4


FinAlgoritmo
