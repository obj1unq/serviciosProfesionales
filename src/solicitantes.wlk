class Persona {
	var property provincia
	
	method puedeSerAtendide(prof) = prof.provinciasDondePuedeTrabajar().contains(provincia)	
}

class Institucion {
	var property universidadesQueReconoce
	
	method puedeSerAtendide(prof) =  universidadesQueReconoce.contains(prof.universidad())
}
