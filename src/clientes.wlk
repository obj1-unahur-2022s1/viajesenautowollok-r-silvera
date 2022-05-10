/*
 * Clientes: Bien(-). Te estaban faltando los métodos setter para poder modificar
 * las variables pertenecientes a los objetos, que aclaraba el enunciado que podían cambiar.
 * Y te dejé sugerencias sobre como simplificar el código en las consultas.
 */

object ludmila{
	/* Bien. Te dejo la forma simplificada que no necesita la palabra return */
	method precioPorKilometro() = 18
}

object anaMaria{
	/* Faltaría un método para poder cambiar el valor de economicamenteEstable.
	 * Te dejo un ejemplo y también te simplifico aún más el método precioPorKilometro()
	 */
	var economicamenteEstable = true
	
	method cambiarEstabilidadEconomica() {
		economicamenteEstable = not economicamenteEstable
	}
	method precioPorKilometro() = if(economicamenteEstable) 30 else 25
}

object teresa{
	/* Faltaría un método para poder cambiar el valor de los pesosPorKilometro.
	 * Te dejo un ejemplo y también te simplifico el método precioPorKilometro()
	 */
	var pesosPorKilometro = 22
	
	method setPesosPorKilometro(unValor) {pesosPorKilometro = unValor}
	method precioPorKilometro() = pesosPorKilometro
}

object melina{
	/* Bien. Solo te simplifico el código de los métodos de consulta */
	var cliente
	
	method trabajaPara(clienteNueva){
		cliente = clienteNueva
	}
	
	method estaTrabajandoPara() = cliente
	
	method precioPorKilometro() = cliente.precioPorKilometro()-3
}

