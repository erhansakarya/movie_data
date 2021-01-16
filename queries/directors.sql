-- name: create-directors-table
CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(20)
)

-- name: select-all-directors
SELECT * FROM directors

-- name: add-email-column-to-directors
ALTER TABLE directors ADD COLUMN email VARCHAR(50) UNIQUE

-- name: change-nationalty-column-type-to-text-in-directors
ALTER TABLE directors ALTER COLUMN nationality TYPE TEXT

-- name: drop-directors-table
DROP TABLE directors