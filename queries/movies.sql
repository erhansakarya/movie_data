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

-- name: drop-movies-table
DROP TABLE movies