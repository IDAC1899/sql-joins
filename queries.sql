\connect sql_ice_cream

-- start fresh every time this file runs
DROP TABLE IF EXISTS ice_creams_ingredients, ingredients, plants, ice_creams;

-- Building Data Models
CREATE TABLE ice_creams (id SERIAL PRIMARY KEY, name VARCHAR(144), pints INT, has_nuts BOOLEAN DEFAULT false);

INSERT INTO ice_creams (name, pints, has_nuts) VALUES
('Plain', 554, false),
('Blueberry', 821, false ),
('Strawberry', 932, false),
('Peanut Butter', 22, true),
('Vanilla', 404, false),
('Chocolate', 203, false);
SELECT * FROM ice_creams;

-- One-to-Many Relationship
CREATE TABLE plants (id SERIAL PRIMARY KEY, city VARCHAR(144), pints_made INT, passed BOOLEAN, ice_cream_id INT);

INSERT INTO plants (city, pints_made, passed, ice_cream_id) VALUES
('Stamford', 100, true, 1),
('Greenwich', 20, false, 2),
('Hartford', 200, true, 3),
('Waterbury', null, null, null),
('Darien', null, null, null),
('New London', 100, true, 2),
('Bridgeport', 150, true, 2),
('Milford', null, false, null),
('Norwalk', 40, true, 3),
('Hamden', null, true, null),
('New Britain', null, false, null),
('Trumbull', null, null, null),
('Danbury', 300, true, 3),
('New Canaan', null, true, null),
('Fairfield', 400, false, 4),
('Stratford', 250, true, 1);


SELECT * FROM plants;

-- Joins
-- ice cream being produced at plants
SELECT * FROM ice_creams JOIN plants ON plants.ice_cream_id = ice_creams.id;

-- all the ice creams, whether or not they are at a plant
SELECT * FROM ice_creams LEFT JOIN plants ON plants.ice_cream_id = ice_creams.id;

-- all the plants, whether or not they are producing any ice cream
SELECT * FROM ice_creams RIGHT JOIN plants ON ice_creams.id = plants.ice_cream_id;

-- all the things
SELECT * FROM ice_creams FULL OUTER JOIN plants ON ice_creams.id = plants.ice_cream_id;

-- just the ice creams and cities
SELECT name, city FROM ice_creams FULL OUTER JOIN plants ON ice_creams.id = plants.ice_cream_id;

-- every combination
SELECT * FROM ice_creams CROSS JOIN plants;