import universidades.*

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }

	method cobrar(importe) { asociacionProfesionalesLitoral.recaudar(importe) }
}


class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	
	method cobrar(importe) { universidad.recibirDonacion(importe / 2) }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorarios
	var provincias
	var totalRecibido = 0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }

	method honorariosPorHora(cuanto) { honorarios = cuanto }
	method provinciasDondePuedeTrabajar(provs) { provincias = provs }
	method honorariosPorHora() { return honorarios }
	method provinciasDondePuedeTrabajar() { return provincias }
	
	method cobrar(importe) { totalRecibido += importe }
	
	method pasarDinero(destinatario, importe) {
		totalRecibido -= importe
		destinatario.cobrar(importe)
	}
}
