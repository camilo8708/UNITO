require './lib/UNITO'
describe UNITO do
    it "inicia Juego y devolver carta" do
        unito = UNITO.new
        expect(unito.cards 1).to eq (1 or 2 or 3 or 4 or 5 or 6 or 7)
    end

	it "inicia Juego y devolver carta en juego" do
        unito = UNITO.new
        expect(unito.cardGame).to eq (1 or 2 or 3 or 4 or 5 or 6 or 7)
    end    
end