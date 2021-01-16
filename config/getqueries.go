package config

import "github.com/gchaincl/dotsql"

func GetDirectorQueries() *dotsql.DotSql {
	dot, err := dotsql.LoadFromFile("directors.sql")
	if err != nil {
		panic(err)
	}

	return dot
}

func GetActorQueries() *dotsql.DotSql {
	dot, err := dotsql.LoadFromFile("actors.sql")
	if err != nil {
		panic(err)
	}

	return dot
}

func GetMovieQueries() *dotsql.DotSql {
	dot, err := dotsql.LoadFromFile("movies.sql")
	if err != nil {
		panic(err)
	}

	return dot
}

func GetMovieRevenueQueries() *dotsql.DotSql {
	dot, err := dotsql.LoadFromFile("movie_revenues.sql")
	if err != nil {
		panic(err)
	}

	return dot
}
