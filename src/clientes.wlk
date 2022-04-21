object ludmila{
	method precioPorKilometro(){
		return 18
	}
}

object anaMaria{
	
	var economicamenteEstable = true
	
	method precioPorKilometro(){
		return if(economicamenteEstable){30} else{25}
	}
}

object teresa{
	var pesosPorKilometro = 22
	
	method precioPorKilometro(){
		return pesosPorKilometro
	}
}

object melina{
	var cliente
	
	method trabajaPara(clienteNueva){
		cliente = clienteNueva
	}
	
	method estaTrabajandoPara(){
		return cliente
	}
	
	method precioPorKilometro(){
		return cliente.precioPorKilometro()-3
	}
}

