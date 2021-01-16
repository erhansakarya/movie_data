-- name: create-movies-actors-table
CREATE TABLE movies_actors (
    movie_id INT REFERENCES movies (movie_id)
    actor_id INT REFERENCES actors (actor_id)
    PRIMARY KEY (movie_id, actor_id)
)

-- name: select-all-movies-actors
SELECT * FROM movies_actors

-- name: drop-movies-actors-table
DROP TABLE movies_actors