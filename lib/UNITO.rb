class UNITO
	COLORLIST = ['Green', 'Yellow', 'Red', 'Blue']
	#@cardlistj1 = {"CJ1_1"=>0,"CJ1_2"=>0, "CJ1_3"=>0,"CJ1_4"=>0, "CJ1_5"=>0,"CJ1_6"=>0,"CJ1_7"=>0 }
	@card = []
	@cardColor
	GANA ="Gano"
	PIERDE="Perdio"
	@cardGame
	@cardColorGame

	def generarCartas 

		@cardlistj1.each_with_index do |element,index|
  			element.do_stuff(index)
  		end


	end
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
		if "#{@cardGame}" == "#{@card}" or "#{@cardColorGame}" == "#{@cardColor}"
			GANA
		else
			PIERDE
		end
	end

end