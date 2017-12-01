require './lib/UNITO'
describe UNITO do
    it "inicia Juego y devolver carta" do
        unito = UNITO.new
        expect(unito.cards 1,1,0).to eq "1-Green"
    end

	it "inicia Juego y devolver carta en juego" do
        unito = UNITO.new
        expect(unito.cardGame 5,1).to eq "5-Yellow"
    end    

    it "inicia Juego y valido si Perdio" do
        unito = UNITO.new
        unito.cards 1,6,1
        unito.cardGame 5,2
        expect(unito.status 1).to eq "Perdio"
    end

    it "inicia Juego y valido si gańo" do
        unito = UNITO.new
        unito.cards 1,7,2
        unito.cardGame 7,2
        expect(unito.status 1).to eq "Gano"
    end
    it "jugar cart" do
    	unito = UNITO.new
   		carta_mazo = unito.cards 1, 7, 2
   		carta_jugador = unito.cardGame 7, 3
   		expect(unito.status 1).to eq "Gano" 
   	end
   	 it "jugar carta no ok" do
    	unito = UNITO.new
   		carta_mazo = unito.cards 1, 8, 2
   		carta_jugador = unito.cardGame 7, 3
   		expect(unito.status 1).to eq "Perdio"
   	end
end