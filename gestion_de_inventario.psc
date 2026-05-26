Algoritmo Gestion_de_inventario
	Escribir "Buenos días, comenzaremos con la gestión del inventario."
	Definir Nombre Como Caracter
	Escribir "¿Cual es el producto del que desea realizar inventario?"
	Leer Nombre
	Definir Cantidad Como Entero
	Escribir "¿Cual es la cantidad del producto que se tiene en existencia?"
	Leer Cantidad
	Escribir "_____________________________________________________________"
	Escribir "¿Qué acción deseas realizar?"
	Definir ciclo Como Entero
	Repetir
		Escribir "Menú de opciones:"
		Escribir "1. Registrar una venta."
		Escribir "2. Abastecer inventario."
		Escribir "3. Salir del programa."
		Definir Menu Como Entero
		Escribir  "Seleccione una opción: "
		Leer Menu
		ciclo = Menu
		Si (Menu = 1) Entonces
			Si (Cantidad > 0) Entonces
				Escribir "Registraremos una venta."
				Escribir "Ingresa la cantidad que se desea vender: "
				Definir Venta Como Entero
				Leer Venta
				Si (Venta <= Cantidad) Entonces
					Cantidad = Cantidad - Venta
					Escribir "Venta registrada"
					Escribir "Inventario actual: ", Cantidad , " unidades"
				SiNo
					Definir ret Como Entero
					Repetir
						Escribir "La cantidad solicitada excede el inventario disponible"
						Escribir "Ingrese una cantidad válida: "
						Leer Venta 
						ret = 0
						Si (Venta <= Cantidad) Entonces
							Cantidad = Cantidad - Venta
							Escribir "Venta registrada"
							Escribir "Inventario actual:", Cantidad , " unidades"
							ret = 1
						FinSi
						
					Hasta Que ret =1
						
					
				FinSi
			SiNo
				Escribir "Ya no hay existencias."
			FinSi
		FinSi
		
		Si (Menu = 2) Entonces
			Escribir "Abasteseremos el inventario."
			Escribir "Ingresa la cantidad que desea reabasteser: "
			Leer abasto
			Si (abasto < 0) Entonces
				Definir ag Como Entero
				Repetir
					Escribir "Error: La cantidad ingresada no puede ser abastecida en cantidades negativas."
					Escribir "Ingrese una cantidad válida: "
					Leer abasto
					ag = 0
					Si (abasto > 0) Entonces
						Cantidad = Cantidad + abasto
						Escribir "Venta registrada"
						Escribir "Inventario actual:", Cantidad , " unidades"
						ret = 1
					FinSi
					
				Hasta Que ret =1
				
			SiNo
				Cantidad = Cantidad + abasto
				Escribir "Inventario actual:", Cantidad , " unidades"
			FinSi
		FinSi
		Si (Menu > 3) Entonces
			Escribir "La opción seleccionada no es valida"
		FinSi
	Hasta Que ciclo = 3
	Escribir "Salida registrada, gracias por usar el sistema de inventario, Hasta pronto"
FinAlgoritmo
