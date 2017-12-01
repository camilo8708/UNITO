class UNITO
	color = ['GREEN', 'YELLOW', 'RED', 'BLUE']
	numeros = [1,2,3,4,5,6,7]
	@cards
	@cardGame

	def cards jugador, carta = Random.new.rand(1..7)
		return @cards = carta
	end

	def cardGame carta = Random.new.rand(1..7)
		@cardGame = carta
	end

	def status
		if @cardGame == @cards
			"Gano"
		else
			"Perdio"
		end
	end
end