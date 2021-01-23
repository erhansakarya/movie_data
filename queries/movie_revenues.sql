-- name: create-movie-revenues-table
CREATE TABLE movie_revenues (
    revenue_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies (movie_id),
    domestic_takings NUMERIC(6,2),
    international_takings NUMERIC(6,2)
)

-- name: select-all-movie-revenues
SELECT * FROM movie_revenues
-- name: select-all-movie-revenues-order-by-revenue-id-with-limit-$1-and-offset-$2
SELECT * FROM movie_revenues ORDER BY revenue_id LIMIT $1 OFFSET $2 

-- name: drop-movie-revenues-table
DROP TABLE movie_revenues