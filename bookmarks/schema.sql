-- my_bookmarks_database schema
-- filename: schema.sql

DROP TABLE bookmarks CASCADE;
DROP TABLE catagories;

CREATE TABLE bookmarks(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255)
  url VARCHAR(2047)
  category_id INTEGER
);

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
