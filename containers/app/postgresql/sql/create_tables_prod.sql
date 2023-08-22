-- Creation of uuid_generate extension
SET search_path TO public;
DROP EXTENSION IF EXISTS "uuid-ossp";
CREATE EXTENSION "uuid-ossp" SCHEMA public;

-- Creation of private schema
CREATE SCHEMA private;
SET search_path TO public, private;

-- Creation of maps table
CREATE TABLE IF NOT EXISTS private.maps (
  id INT GENERATED ALWAYS AS IDENTITY,
  name TEXT UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

-- Creation of nodes table
CREATE TABLE IF NOT EXISTS private.nodes (
  id INT GENERATED ALWAYS AS IDENTITY,
  position JSONB,   
  map_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_map
    FOREIGN KEY(map_id)
      REFERENCES maps(id)
      ON DELETE CASCADE
);

-- Creation of links table
CREATE TABLE IF NOT EXISTS private.links (
  id INT GENERATED ALWAYS AS IDENTITY,
  source INT,
  target INT,
  map_id INT,  
  PRIMARY KEY(id),
  CONSTRAINT fk_map
    FOREIGN KEY(map_id)
      REFERENCES maps(id)
      ON DELETE CASCADE  
);