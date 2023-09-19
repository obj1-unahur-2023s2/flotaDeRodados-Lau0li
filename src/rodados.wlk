class chevrolet{
	var property color
	method capacidad() = 4
	method velocidad() = 150
	method peso() = 1300
	
}

class kwid {
	var property conTanqueAdicional = False
	
	method capacidad() = if(conTanqueAdicional){3} else {4}
	method velocidad() = if(conTanqueAdicional){120} else {110}
	method peso() = if(conTanqueAdicional){1200+150} else {1200}
	method color() = "azul"
	
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo{
	
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular{
	
	method capacidad() = 12
	method peso() = 1000
}

class Trafic{
	var property interior
	var property motor 
	
	method velocidad() = motor.velocidad()
	method capacidad() = interior.capacdidad()
	method peso() = 4000 + motor.peso() + interior.peso()
	method color() = "blanco"
	method configurar(unInterior, unMotor){
		interior = unInterior
		motor = unMotor
	} 
}

class AutosEspeciales {
	var property capacidad
	var property peso
	var property color
	var property velocidad
}