Algoritmo Registor_de_pedido
	Escribir "Buenos días, comenzaremo a ingresar los datos para su pedido." 
	Escribir "Ingrese su nombre: " 
	Leer Nombre
	Escribir "Ingrese el producto que desea: "
	Leer Producto
	Escribir "Ingrese la cantidad que desea: "
	Leer Cantidad
	Escribir "Ingrese el precio del producto por unidad: "
	Leer Precio
	
	Total = Cantidad * Precio
	
	Escribir "Te mostramos el resumen de tu pedido:"
	Escribir "Cliente: " Nombre
	Escribir "Producto: " Producto
	Escribir "Cantidad: " Cantidad
	Escribir "Precio por unidad: " Precio
	Escribir "Total a pagar: " Total
	
	Escribir "Gracias por su compra."
FinAlgoritmo
