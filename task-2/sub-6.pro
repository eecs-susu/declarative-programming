domains
    number, time, day, month, year = integer
    title, country, genre = string
predicates
	movie(number, title, country, time, genre, day, month, year)
    find_movie_by_genre(genre)
    find_movie_by_country(country)
clauses
	movie(1, "Atonement", "England", 130, "Drama", 19, 2, 2008).
	movie(2, "Casualties of War", "USA", 113, "Drama", 18, 8, 1989).
	movie(3, "Out of the past", "USA", 97, "Thriller", 25, 11, 1947).
	movie(4, "Spy Kids", "USA", 90, "Action", 30, 3, 2001).
	movie(5, "Domestic Disturbance", "USA", 90, "Thriller", 2, 11, 2001).
	movie(6, "My Boss's Daughter", "USA", 90, "Comedy", 22, 8, 2003).
    find_movie_by_genre(Genre) :- movie(_, Title, _, _, Genre, _, _, _), write(Title), nl.
    find_movie_by_country(Country) :- movie(_, Title, Country, _, _, _, _, _), write(Title), nl.
goal
    %find_movie_by_genre("Drama").
    %find_movie_by_genre("Drama"), fail.

    %find_movie_by_country("USA").
    find_movie_by_country("USA"), fail.
