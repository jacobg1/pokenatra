require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'

require_relative 'models/pokemon'
require_relative 'models/trainer'
require_relative 'models/team'


#home page
get '/' do
  erb :home
end


#pokemon index
get '/pokemon' do
  @pokemon = Pokemon.all
  erb :index
end

#add new pokemon page (get)
get '/pokemon/new' do
  @trainers = Trainer.all
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
  @trainers = Trainer.all
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

#*********************TRAINERS********************TRAINERS**********************************

#trainers index
get '/trainers' do
  @trainers = Trainer.all
  erb :trainers_index
end

#add trainer
get '/trainers/new' do
  @teams = Team.all
  erb :trainers_new
end

#update page with new trainer
post '/trainers' do
  @trainers = Trainer.create!(params[:trainers])
  redirect "trainers/#{@trainers.id}"
end

#trainers show page
get '/trainers/:id' do
  @trainers = Trainer.find(params[:id])
  erb :trainers_show
end

#edit trainer
get '/trainers/:id/edit' do
  @trainers = Trainer.find(params[:id])
  @teams = Team.all
  erb :trainers_edit
end

#update edit info
put '/trainers/:id' do
  @trainers = Trainer.find(params[:id])
  @trainers.update(params[:trainers])
  redirect "/trainers/#{@trainers.id}"
end

#delete trainer
delete '/trainers/:id' do
  @trainers = Trainer.find(params[:id])
  @trainers.destroy
  redirect '/trainers'
end

#*******************TEAMS******************TEAMS****************************************

#team index
get '/teams' do
  @teams = Team.all
  erb :team_index
end

#team new page
get '/teams/new' do
  erb :team_new
end

#team new post page
post '/teams' do
  @teams = Team.create!(params[:teams])
  redirect "/teams/#{@teams.id}"
end

#team show page
get '/teams/:id' do
  @teams = Team.find(params[:id])
  erb :team_show
end

#team edit page
get '/teams/:id/edit' do
  @teams = Team.find(params[:id])
  erb :team_edit
end

#update edit info
put '/teams/:id' do
  @teams = Team.find(params[:id])
  @teams.update(params[:teams])
  redirect "/teams/#{@teams.id}"
end

#delete team
delete '/teams/:id' do
  @teams = Team.find(params[:id])
  @teams.destroy
  redirect '/teams'
end
