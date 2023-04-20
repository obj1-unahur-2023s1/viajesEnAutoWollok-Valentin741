import remiseras.*
import clientes.*
import cadete.*

object oficina {
	var primeraOpcion = null
	var segundaOpcion = null
	method asignarRemiseras(remisera1, remisera2) {
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method primeraOpcion() = primeraOpcion
	method segundaOpcion() = segundaOpcion
	method cambiarPrimerRemiseraPor(remisera) { primeraOpcion = remisera }
	method cambiarSegundaRemiseraPor(remisera) { segundaOpcion = remisera }
	method intercambiarRemiseras() {
		const primerOpAnterior = primeraOpcion
		//const segundaOpAnterior = segundaOpcion
		self.cambiarPrimerRemiseraPor(segundaOpcion)
		self.cambiarSegundaRemiseraPor(primerOpAnterior)
	}
	method diferenciaDePrecios(cliente, kmDeViaje) = (segundaOpcion.precioViaje(cliente, kmDeViaje) - primeraOpcion.precioViaje(cliente, kmDeViaje)).abs()
	method remiseraElegidaParaViaje(cliente, kmDeViaje) {
		var remiseraElegida = primeraOpcion
		if(self.diferenciaDePrecios(cliente, kmDeViaje) > 30 ){
			remiseraElegida = segundaOpcion
		}
		return remiseraElegida
	}
	
}
