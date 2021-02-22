create database pokedex;
use pokedex;

CREATE TABLE pokemon (
	pokemon_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    weakness VARCHAR(255)
);

CREATE TABLE types (
	type_id INT PRIMARY KEY NOT NULL auto_increment,
    type VARCHAR(255) NOT NULL
);

CREATE TABLE pokemon_type (
	pokemon_type_id INT PRIMARY KEY NOT NULL auto_increment,
    type_id INT NOT NULL,
	pokemon_id INT NOT NULL
);

ALTER TABLE pokemon_type ADD FOREIGN KEY(pokemon_id) REFERENCES pokemon(pokemon_id);
ALTER TABLE pokemon_type ADD FOREIGN KEY(type_id) REFERENCES types(type_id);