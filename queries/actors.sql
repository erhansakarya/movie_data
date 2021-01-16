-- name: create-actors-table
CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE
)

-- name: select-all-actors
SELECT * FROM actors
-- name: select-all-first-names-from-actors
SELECT first_name FROM actors
-- name: select-all-first-name-last-name-from-actors
SELECT first_name, last_name FROM actors
-- name: select-all-actors-by-gender
SELECT * FROM actors WHERE gender = ?

-- name: insert-actor
INSERT INTO actors (first_name, last_name, gender, date_of_birth) VALUES (?, ?, ?, ?)

-- name: update-actor-first-name-by-actor-id
UPDATE actors SET first_name = ? WHERE actor_id = ?

-- name: delete-actor-by-id
DELETE FROM actors WHERE actor_id = ?

-- name: delete-all-datas
DELETE FROM actors

-- name: drop-actors-table
DROP TABLE actors