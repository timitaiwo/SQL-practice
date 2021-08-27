CREATE TABLE animals (
	specie_ID bigserial,
	animal_name varchar(20),
	population numeric
);

CREATE TABLE animal_features(
	animal_name varchar(20),
	scientific_name varchar(50),
	animal_family varchar(50)
);

INSERT INTO animals (animal_name, population)
VALUES ('Lion', 20),
	   ('Zebra', 30),
	   ('Chimpanzee', 10),
	   ('Monkey', 35),
	   ('Hippo', 10);

INSERT INTO animal_features (animal_name, scientific_name, animal_family)
VALUES ('Lion', 'Panthera Leo', 'Felidae'),
	   ('Zebra', 'Equus Quagga', 'Equidae'),
	   ('Chimpanzee', 'Pan Troglodytes', 'Hominidae'),
	   ('Monkey', 'Cebus Capucinus', 'Cebidae'),
	   ('Hippo', 'Hippopotamus Amphibius', 'Hippopotamidae');