require './lib/UNITO'
describe UNITO do
    it "inicia Juego y devolver carta" do
        unito = UNITO.new
        expect(unito.cards 1,6).to eq 6
    end

	it "inicia Juego y devolver carta en juego" do
        unito = UNITO.new
        expect(unito.cardGame 5).to eq 5
    end    

    it "inicia Juego y valido si gańo" do
        unito = UNITO.new
        expect(unito.cards 1,6).to eq 6
        expect(unito.cardGame 5).to eq 5
        expect(unito.status).to eq "Perdio"
    end

    it "inicia Juego y valido si gańo" do
        unito = UNITO.new
        unito.cards 1,7
        unito.cardGame 7
        expect(unito.status).to eq "Gano"
    end
end