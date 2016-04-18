DROP USER IF EXISTS denormal_user;
CREATE ROLE denormal_user;
DROP DATABASE IF EXISTS denormal_cars;
CREATE DATABASE denormal_cars OWNER denormal_user;
\c denormal_cars;

\i scripts/denormal_data.sql;
-- \dS;

SELECT DISTINCT make_title
FROM car_models;

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'VOLKS';

SELECT make_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;