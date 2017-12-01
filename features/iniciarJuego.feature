Feature:
	Como jugador
	Quiero que el juego me reparta cartas
	Para poder planear mis jugadas

Scenario: iniciar aplicacion
	Given que inicie la aplicacion
	And las cartas  entregar son "1" de color "Yellow"
	Then debo ver titulo "JUGADOR 1"
	And  debo ver titulo "JUGADOR 2"
	And  debo ver una carta principal "1" color "Yellow"
	And  debo ver turno "TURNO JUGADOR 1"
	And  debo ver "1-Yellow" carta para jugador "CARTAS JUGADOR 1"
#	And debo ver "7" cartas para jugador "j2" 

Scenario: Gana Jugador 1
	Given que inicie la aplicacion
	And las cartas  entregar son "2" de color "Red"
	And la carta en juego es "2" de color "Red"
	When juegue carta
	Then debo ver titulo "GANADOR JUGADOR 1"


Scenario: Carta invalida
	Given que inicie la aplicacion
	And las cartas  entregar son "3" de color "Blue"
	And la carta en juego es "2" de color "Red"
	When juegue carta
	Then debo ver titulo "Carta invalida"