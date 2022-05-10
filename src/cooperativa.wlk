/*
 * Oficina: Bien. Lo que se esperaba para implementar el método de intercambiarRemiseras()
 * era la reutilización del método asignarRemiseras. Y se dejan algunas sugerencias
 * sobre como simplificar y mejorar el código.
 */

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
		/* No está mal la solución, pero se esperaba que reutilicen el método que 
		 * permite asignarRemiseras, ya que en un solo paso podés intercambiarlas.
		 * De esa forma, no es necesario usar variables auxiliares. Te dejo la corrección.
		 */
		self.asignarRemiseras(segundaOpcion,primeraOpcion) 
	}
	
	method remiseraElegidaParaViaje(cliente,kms) =
		/* Antes que definir variables nuevas que solo se usen como auxiliares, 
		 * lo correcto sería definir métodos auxiliares. Te dejo una sugerencia 
		 * con un método que calcula la diferencia y además simplifico el 
		 * código de los getter.
		 */
		if (self.diferenciaPrecio(cliente,kms)>30) segundaOpcion else primeraOpcion
	
	method diferenciaPrecio(cliente,kms) = 
		primeraOpcion.precioViaje(cliente,kms)
		- segundaOpcion.precioViaje(cliente,kms) 
		
}
