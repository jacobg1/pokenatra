require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'

require_relative 'models/pokemon'

#pokemon index
get '/pokemon' do
  @pokemon = Pokemon.all
  erb :index
end

#add new pokemon page (get)
get '/pokemon/new' do
  erb :new
end

#add new pokemon (post)
post '/pokemon' do
  @pokemon = Pokemon.create!(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

#pokemon show page
get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :show
end
