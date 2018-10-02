class Universidad {
	var property provincia	
	var property honorarioRecomendado
	var recibidoPorDonaciones = 0
	
	method recibirDonacion(importe) { recibidoPorDonaciones += importe }
}


object asociacionProfesionalesLitoral {
	var recaudado = 0
	
	method recaudar(importe) { recaudado += importe }
}