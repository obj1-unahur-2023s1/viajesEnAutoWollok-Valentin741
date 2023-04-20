import remiseras.*

object ludmila {
	//var property estaEstableEconomicamente = null
	method pesosPorKM() = 18
}

object anaMaria {
	var property estaEstableEconomicamente = true
	method pesosPorKM(){
		var pesos = 25
		if(estaEstableEconomicamente){
			pesos = 30
		}
		return pesos
	}
}

object teresa {
	//var property estaEstableEconomicamente = null
	var property pesosPorKM = 22
}