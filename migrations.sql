psql


CREATE DATABASE restaurant;

c\ restaurant

CREATE TABLE parties (
  id SERIAL PRIMARY KEY,,
  waiter_name VARCHAR(255)
);


CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  food_name VARCHAR(255),
  cost NUMERIC(9,2),
  category VARCHAR(255)

);


CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  party_id INTEGER,
  food_id INTEGER,
  seat_number INTEGER,
  timestamp TIMESTAMP

);
