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