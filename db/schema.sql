DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

create table trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  photo_url VARCHAR
);

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url VARCHAR,
  trainer_id INT
);
