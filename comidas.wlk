import wollok.game.*
import extras.*
import pepita.*

object manzana {
	
	method tipo() = "manzana"
	method image() = "manzana.png"
	method position() = game.at(2, 8)
	method energiaQueOtorga() = 40

}

object alpiste {

	method tipo() = "alpiste"
	method image() = "alpiste.png"
	method position() = game.at(2, 2)
	method energiaQueOtorga() = 70
 
}

