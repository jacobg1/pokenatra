DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS teams;


create table trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  photo_url VARCHAR,
  team_id INT
);

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url VARCHAR,
  trainer_id INT
);

create table teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR
);
