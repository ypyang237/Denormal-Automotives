DROP USER IF EXISTS denormal_user;
CREATE ROLE denormal_user;
DROP DATABASE IF EXISTS denormal_cars;
CREATE DATABASE denormal_cars OWNER denormal_user;
\c denormal_cars;
