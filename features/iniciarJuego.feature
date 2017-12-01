Feature:
	Como jugador
	Quiero que el juego me reparta cartas
	Para poder planear mis jugadas

Scenario: iniciar aplicacion
	Given que inicie la aplicacion
	Then debo ver titulo "JUGADOR 1"
	And  debo ver titulo "JUGADOR 2"
	And  debo ver una carta principal "1" color "Yellow"
	And  debo ver turno "Turno j1"
	And  debo ver "1-Yellow" carta para jugador "j1"
#	And debo ver "7" cartas para jugador "j2" 
