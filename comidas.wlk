import pepita.*
import wollok.game.*
import randomizer.*

object manzana {

	method position() = game.at(2, 7)

	method image() = "manzana.png"

	method energiaQueOtorga() = 40

}

object alpiste {
	var valor1= randomizer.position()
	var valor2= randomizer.position()
	method position() = game.at(valor1.x(),valor2.y())

	method image() = "alpiste.png"

	method energiaQueOtorga() = 70

}

