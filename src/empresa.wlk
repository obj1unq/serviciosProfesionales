class EmpresaDeServicios {
	var profesionales = []
	var property honorarioReferencia 
	
	method contratarProf(prof) { profesionales.add(prof) }
	method despedirProf(prof) { profesionales.remove(prof) }
	
	method profesionalesCaros() = profesionales.filter { prof => prof.honorariosPorHora() > honorarioReferencia }
	method universidadesFormadoras() = profesionales.map { prof => prof.universidad() }.asSet()
	method profesionalMasBarato() = profesionales.min { prof => prof.honorariosPorHora() }
	method esProvinciaCubierta(prov) = profesionales.any { prof => prof.provinciasDondePuedeTrabajar().contains(prov) }
	method esPocoAtractivo(prof) = prof.provinciasDondePuedeTrabajar().all {
		prov => profesionales.any { 
			prof2 => prof2.provinciasDondePuedeTrabajar().contains(prov) 
			and prof2.honorariosPorHora() < prof.honorariosPorHora()
		}
	}

	method puedeSatisfacer(solicitante) = profesionales.any { prof => solicitante.puedeSerAtendide(prof) }	
}
