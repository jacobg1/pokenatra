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

#edit page
get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :edit
end

#update info
put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

#delete pokermans
delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect '/pokemon'
end
