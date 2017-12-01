require 'sinatra'
require './config'
require './lib/UNITO'

get '/' do
    session['juego'] = UNITO.new
    session['cartaPrincipal']= session['juego'].cardGame
    session['cartaJ1']= session['juego'].cards 1
    session['cartaJ2']= session['juego'].cards 2
    session['estado'] = ""
    session['ganador'] = ""
	erb :index
end

post '/jugar/:jugador' do |jugador|
	session['estado'] = ""
	session['ganador'] = ""
	estado = session['juego'].status jugador.to_i
	if estado == "Gano"
		if jugador == "1"
			session['ganador'] = "GANADOR JUGADOR 1"
		else
			session['ganador'] = "GANADOR JUGADOR 2"
		end

	else
		session['estado'] = "Carta invalida"
	end
	erb :index
end

get '/backdoor/carta/:numero/:color' do |numero,color|
	COLORLIST = ["Green"=>0, "Yellow"=>1, "Red"=>2, "Blue"=>3]
	if color == "Green"
		colorN = 0
	elsif color == "Yellow"
		colorN = 1
	elsif color == "Red"
		colorN = 2
	elsif color == "Blue"
		colorN = 3
	end

	session['cartaJ1'] = session['juego'].cards 1,numero,colorN
	erb :index
end

get '/backdoor/cartaJuego/:numero/:color' do |numero,color|
	COLORLIST = ["Green"=>0, "Yellow"=>1, "Red"=>2, "Blue"=>3]
	if color == "Green"
		colorN = 0
	elsif color == "Yellow"
		colorN = 1
	elsif color == "Red"
		colorN = 2
	elsif color == "Blue"
		colorN = 3
	end

	session['cartaPrincipal'] = session['juego'].cardGame numero,colorN
	erb :index
end