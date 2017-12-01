require './lib/UNITO'
describe UNITO do
    it "inicia Juego y devolver carta" do
        unito = UNITO.new
        expect(unito.cards 1,6,0).to eq "6-GREEN"
    end

	it "inicia Juego y devolver carta en juego" do
        unito = UNITO.new
        expect(unito.cardGame 5,1).to eq "5-YELLOW"
    end    

    it "inicia Juego y valido si Perdio" do
        unito = UNITO.new
        unito.cards 1,6,1
        unito.cardGame 5,1
        expect(unito.status).to eq "Perdio"
    end

    it "inicia Juego y valido si gańo" do
        unito = UNITO.new
        unito.cards 1,7,2
        unito.cardGame 7,2
        expect(unito.status).to eq "Gano"
    end
end