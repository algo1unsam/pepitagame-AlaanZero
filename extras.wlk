import pepita.*
import wollok.game.*
import comidas.*

object nido {
	method esNido() = true

	var property position = game.at(7, 8)

	method image() = "nido.png"

	method teEncontro(ave) {
		game.say(ave, "GANASTE! WIII")
		game.schedule(2000, { game.stop() })
	}
}
//

object silvestre {
	method esSilvestre() = true

	method image() = "silvestre.png"

	method restriccion() = pepita.position().x().max(3)

	method position() = game.at(self.restriccion(),0)

}
