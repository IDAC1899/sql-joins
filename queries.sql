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