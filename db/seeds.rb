require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Trainer.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id: 1)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id: 1)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id: 2)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id: 1)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id: 1)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id: 2)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: 1)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: 2)

Trainer.create(name: "Ash Catchum", photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwio3Ybrs6XVAhVLcz4KHZKUAO8QjRwIBw&url=http%3A%2F%2Fsonicpokemon.wikia.com%2Fwiki%2FAsh_Ketchum&psig=AFQjCNHvUkjb7UUB1aRqk4IIv2jWo0V-_g&ust=1501105481694685")
Trainer.create(name: "Jake", photo_url: "https://img.pokemondb.net/artwork/blastoise.jpg")
