require 'sinatra'
require 'sinatra/reloader' if development?
require 'puma'

get '/' do
  erb :home
end

post '/data' do
  @airline = params[:airline]
  @destination = params[:destination]
  @flightnumber = params[:flightnumber]
  @departuretime = params[:departuretime]
  
  erb :display
end