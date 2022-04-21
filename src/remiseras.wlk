import clientes.*

object roxana{
	method precioViaje(cliente,kms){
		return cliente.precioPorKilometro() * kms 
	}
}

object gabriela{
	method precioViaje(cliente,kms){
		return (cliente.precioPorKilometro() * kms)	* 1.2
	}	
}

object mariela{
	method precioViaje(cliente,kms){
		return (cliente.precioPorKilometro() * kms).max(50)
	}
}

object juana{
	method precioViaje(cliente,kms){
		return if(kms <= 8){100} else{200}
	}
}

object lucia{
	var companiera
	
	method estaReemplazando(remisera){
		companiera = remisera
	}
	
	method reemplazaA(){
		return companiera
	}
	
	method precioViaje(cliente,kms){
		return companiera.precioViaje(cliente,kms)
	}
}


