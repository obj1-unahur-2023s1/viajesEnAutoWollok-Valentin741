import clientes.*

object roxana {
	method precioViaje(cliente,kmDeViaje) = cliente.pesosPorKM() * kmDeViaje
}

object gabriela {
	method precioViaje(cliente, kmDeViaje) = cliente.pesosPorKM() * 1.2 * kmDeViaje
}

object mariela {
	method precioViaje(cliente, kmDeViaje) = 50.max(cliente.pesosPorKM() * kmDeViaje)
}

object juana {
	method precioViaje(cliente, kmDeViaje) {
		var precio = 0
		if(kmDeViaje <= 8){
			precio = 100
		} else{
			precio = 200
		}
		return precio
	}
}
	
object lucia {
	var property remiseraQueReemplaza = null 
	method precioViaje(cliente, kmDeViaje) = remiseraQueReemplaza.precioViaje(cliente, kmDeViaje) 
}

