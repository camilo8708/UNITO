require 'sinatra'
require './config'
require './lib/UNITO'

get '/' do
    session['juego'] = UNITO.new
    session['cartaPrincipal']= session['juego'].cardGame
    session['cartaJ1']= session['juego'].cards 1
	erb :index
end

post '/jugar' do
	erb :ganador
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