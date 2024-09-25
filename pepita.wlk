import extras.*
import wollok.game.*
import comidas.*

object pepita {

	var property energia = 100
	var property position = game.origin()

	method image() {
		return if (self.estaEnElNido()){
		"pepita-grande.png"
		}else if(silvestre.position() == self.position()){
			"pepita-gris.png"
		}
		 else "pepita.png"
		
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method vola(kms) {
		energia = energia - kms * 9
		self.irA(self.position().up(1))
	}

	method irA(nuevaPosicion) {
		
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		return position == nido.position()
	}
	
	
	method estaEnElSuelo() {
		return position.y() == 0 
	}

}

