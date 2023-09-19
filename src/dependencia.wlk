import rodados.*

class Dependencia{
	var property cantidadEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	
	method sacarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFLota(){
		return rodados.sum({rodado => rodado.peso()})
	}
	
	method todosSuperanXVelocidad(velocidad){
		return rodados.all({r => r.velocidad() >= velocidad})
	}
	
	method estaBienEquilibrada() {
		return	rodados.size() >= 3 && self.todosSuperanXVelocidad(100)
	}
	
	
	method capacidaTotalEnElColor(color){
		return self.rodadosDeUnColor(color).sum({r => r.capacdad()})
	}
	
	method rodadosDeUnColor(color) {
		return rodados.filter({r =>r.color() == color})
	}
	
	method colorDelRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido() {
		if (rodados.isEmpty()){
			self.error("No se puede calcular el maximo")
		}
		return rodados.max({r=> r.velocdad()})
	}
	
	method capacidadDeLaFlota(){
		return rodados.sum({r => r.capacidad()})
	}
	method capacidadFaltante(){
		return 0.max(cantidadEmpleado-self.capacidadDeLaFlota()) //revisar si sirveo esta bien
	}
	method esGrande(){
		return cantidadEmpleado <= 40 and rodados.size() >= 5
	}
}
