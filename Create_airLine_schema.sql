-- run this file as a sys user
CREATE USER airline IDENTIFIED BY airline;

GRANT CREATE MATERIALIZED VIEW,
      CREATE PROCEDURE,
      CREATE SEQUENCE,
      CREATE SESSION,
      CREATE SYNONYM,
      CREATE TABLE,
      CREATE TRIGGER,
      CREATE TYPE,
      CREATE VIEW
  TO airline;

ALTER USER airline QUOTA UNLIMITED ON USERS;

--drop user airline CASCADE;


-- select * from USER$ where name = 'airline';