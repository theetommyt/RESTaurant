psql


CREATE DATABASE restaurant;

c\ restaurant

CREATE TABLE parties (
  id SERIAL PRIMARY KEY,
  seat_number INTEGER,
  waiter_name VARCHAR(255)
);


CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  food_name VARCHAR(255),
  cost DECIMAL,
  category VARCHAR(255)

);


CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  party_id INTEGER,
  food_id INTEGER,
  timestamp TIMESTAMP

);
