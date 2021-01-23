-- name: create-movies-table
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50) NOT NULL,
    movie_length INT,
    movie_lang VARCHAR(20)
    release_date DATE,
    age_certificate VARCHAR(5),
    director_id INT REFERENCES directors (director_id)
)

-- name: select-all-movies
SELECT * FROM movies
-- name: select-all-movies-by-age-certificate-and-movie-lang
SELECT * FROM movies WHERE age_certificate = ? AND movie_lang = ?
-- name: select-all-movies-by-age-certificate-or-movie-lang
SELECT * FROM movies WHERE age_certificate = ? OR movie_lang = ?
-- name: select-all-movie-names-from-movies-by-movie-length-equal-or-greater-than-movie-length
SELECT movie_name FROM movies WHERE movie_length >= ?
-- name: select-movie-names-from-movies-by-movie-lenght-between-$1-and-$2
SELECT movie_name FROM movies WHERE movie_length BETWEEN $1 AND $2
-- name: select-movie-name-and-length-in-desc-order-by-movie-length
SELECT movie_name, movie_length FROM movies ORDER BY movie_length DESC
-- name: select-movie-name-and-length-in-asc-order-by-movie-length
SELECT movie_name, movie_length FROM movies ORDER BY movie_length ASC
-- name: select-movie-name-and-length-of-the-lowest-length-$1-movies
SELECT movie_name, movie_length FROM movies ORDER BY movie_length LIMIT $1
-- name: select-movie-id-and-name-by-fetching-first-$1-row-only
SELECT movie_id, movie_name FROM movies FETCH FIRST $1 ROW ONLY
-- name: select-distinct-movie-langs-order-by-movie-lang
SELECT DISTINCT movie_lang FROM movies ORDER BY movie_lang
-- name: select-distinct-combination-of-the-movie-lang-and-age-certificate-order-by-movie-lang
SELECT DISTINCT movie_lang, age_certificate FROM movies ORDER BY movie_lang
-- name: select-all-movies-where-age-certificate-is-null
SELECT * FROM movies WHERE age_certificate IS NULL

-- name: drop-movies-table
DROP TABLE movies