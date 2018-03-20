# We will have tables for: Characters, Books, Series, Authors, and Sub-Genres

CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal INTEGER,
  start_date INTEGER,
  end_date INTEGER
);

CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);

CREATE TABLE sub_genres (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);
