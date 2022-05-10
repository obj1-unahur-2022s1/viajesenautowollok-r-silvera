/*
 * Clientes: Bien. Te dejo sugerencias para simplificar el código nomás.
 */
import clientes.*

object roxana{
	/* Bien. Te dejo la forma simplificada sin return */
	method precioViaje(cliente,kms) = cliente.precioPorKilometro() * kms 
}

object gabriela{
	/* Bien. Te dejo la forma simplificada sin return */
	method precioViaje(cliente,kms) = cliente.precioPorKilometro() * kms * 1.2
}

object mariela{
	/* Bien! Te dejo la forma simplificada sin return */
	method precioViaje(cliente,kms) = (cliente.precioPorKilometro() * kms).max(50)
}

object juana{
	/* Bien. Te dejo la forma simplificada sin return */
	method precioViaje(cliente,kms) = if(kms <= 8) 100 else 200
}

object lucia{
	/* Bien. Te dejo la forma simplificada sin return */
	var companiera
	
	method estaReemplazando(remisera){
		companiera = remisera
	}
	
	method reemplazaA() = companiera
	
	method precioViaje(cliente,kms) = companiera.precioViaje(cliente,kms)
	// también: method precioViaje(cliente,kms) = self.reemplazaA().precioViaje(cliente,kms)
}
