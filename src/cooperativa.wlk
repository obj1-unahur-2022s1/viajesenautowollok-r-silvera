object oficina{
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1,remisera2){
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera){
		primeraOpcion = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		segundaOpcion = remisera
	}
	
	method intercambiarRemiseras(){
		var remisera1 = primeraOpcion
		var remisera2 = segundaOpcion
		
		primeraOpcion = remisera2
		segundaOpcion = remisera1
	}
	
	method remiseraElegidaParaViaje(cliente,kms){
		var primerPrecio = primeraOpcion.precioViaje(cliente,kms)
		var segundoPrecio = segundaOpcion.precioViaje(cliente,kms)	
		var opcionElegida
		
		if(primerPrecio - segundoPrecio > 30){
			opcionElegida = segundaOpcion
		}else{
			opcionElegida = primeraOpcion
		}
		return opcionElegida
	}
}
