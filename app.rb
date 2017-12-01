require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/jugar' do
	erb :ganador
end