object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	method algunDiaSeProdujo (cantidad) {
		return produccionPorDia.any({pd => pd == cantidad })
	}
	
	method maximoValorDeProduccion() {
		return produccionPorDia.max()
	}
	
	method valoresDeProduccionPares() {
		return produccionPorDia.filter({ numero => numero.even() })
	}
	
	method produccionEsAcotada(n1,n2) {
		return produccionPorDia.all({acotada => acotada.between(n1,n2)})
	}
	
	method produccionesSuperioresA(cuanto) {
		return produccionPorDia.filter({ superior => superior > cuanto })
	}
	
	method produccionesSumando(n) {
		return produccionPorDia.map ({ producto => producto + n})
	}
	
	method totalProducido() {
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	
	method cantidadProduccionesMayorALaPrimera() {
		return produccionPorDia.count({mayor => mayor > produccionPorDia.first()})
	}
	
	
	//OTRA FORMA UTILIZANDO UNA VARIABLE
	//method cantidadProduccionesMayorALaPrimera() {
	//var laPrimera = produccionPorDia.first()
	//return produccionPorDia.count({mayor => mayor > laPrimera})
	//}
}


//any devuelve un booleano si se cumple cualquier condicion de la funcion en la lista 
//LISTA.any({CONDICION})  

//contains da un booleano si el parametro esta dentro de la lista