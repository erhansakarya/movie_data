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
-- name: select-first-name-from-actors-by-first-name-is-equal-$1-or-$2
SELECT first_name FROM actors WHERE first_name IN ($1, $2)
-- name: select-first-name-from-actors-by-first-name-is-not-equal-$1-or-$2
SELECT first_name FROM actors WHERE first_name NOT IN ($1, $2)
-- name: select-all-actors-by-first-letter-of-the-first-name-is-$1
SELECT * FROM actors WHERE first_name LIKE '$1%'
-- name: select-all-actors-by-first-and-second-letter-is-$1-and-$2-and-one-single-character
SELECT * FROM actors WHERE first_name LIKE '$1$2_'
-- name: select-all-actors-by-two-characters-then-$1-$2-characters-and-one-single-character
SELECT * FROM actors WHERE first_name LIKE '__$1$2_'
-- name: select-first-and-last-names-from-actors-by-alphabetically-order-of-the-first-name
SELECT first_name, last_name FROM actors ORDER BY first_name
-- name: select-concatenated-first-last-name-as-full-name-with-space-seperator-from-actors
SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM actors

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