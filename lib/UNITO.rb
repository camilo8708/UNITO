class UNITO
	COLORLIST = ['Green', 'Yellow', 'Red', 'Blue']
	@card
	@cardColor

	@cardGame
	@cardColorGame

	def cards jugador, carta = Random.new.rand(1..7), color = Random.new.rand(1..3)
		@card = carta
		@cardColor = color
        "#{@card}-#{COLORLIST[@cardColor]}"

		#return @cardColor
	end

	def cardGame carta = Random.new.rand(1..7), color = Random.new.rand(0..3)
		@cardGame = carta
		@cardColorGame = color
		"#{@cardGame}-#{COLORLIST[@cardColorGame]}"
	end

	def status
		if "#{@cardGame}-#{@cardColorGame}" == "#{@card}-#{@cardColor}"
			"Gano"
		else
			"Perdio"
		end
	end
end