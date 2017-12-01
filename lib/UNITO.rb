class UNITO
	COLORLIST = ['Green', 'Yellow', 'Red', 'Blue']
	#@cardlistj1 = {"CJ1_1"=>0,"CJ1_2"=>0, "CJ1_3"=>0,"CJ1_4"=>0, "CJ1_5"=>0,"CJ1_6"=>0,"CJ1_7"=>0 }
	@card 
	@cardColor
	GANA ="Gano"
	PIERDE="Perdio"
	@cardGame
	@cardColorGame

	def initialize
		@card = Array.new
		@cardColor = Array.new
	end

	def generarCartas 

		@cardlistj1.each_with_index do |element,index|
  			element.do_stuff(index)
  		end


	end
	def cards jugador, carta = Random.new.rand(1..7), color = Random.new.rand(1..3)
		if jugador == 1
			@card.unshift(carta)
			@cardColor.unshift(color)	
		else
			@card.push(carta)
			@cardColor.push(color)
		end	
		
        "#{@card[jugador -1]}-#{COLORLIST[@cardColor[jugador -1]]}"

	end

	def cardGame carta = Random.new.rand(1..7), color = Random.new.rand(0..3)
		@cardGame = carta
		@cardColorGame = color
		"#{@cardGame}-#{COLORLIST[@cardColorGame]}"
	end

	def status jugador
		if "#{@cardGame}" == "#{@card[jugador -1]}" or "#{@cardColorGame}" == "#{@cardColor[jugador -1]}"
			GANA
		else
			PIERDE
		end
	end

end