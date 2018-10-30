domains
    number, time, day, month, year = integer
    title, country, genre = string
predicates
	movie(number, title, country, time, genre, day, month, year)
    find_movie_by_genre(genre)
    find_movie_by_country(country)
    find_movie_after_year(year)
clauses
	movie(1, "Atonement", "GB", 130, "Drama", 19, 2, 2008).
	movie(2, "Can", "Russia", 115, "Thriller", 22, 2, 2007).
	movie(3, "Paragraph 78", "Russia", 90, "Action", 22, 2, 2007).
	movie(4, "Spy Kids", "USA", 90, "Action", 30, 3, 2001).
	movie(5, "Domestic Disturbance", "USA", 90, "Thriller", 2, 11, 2001).
	movie(6, "My Boss's Daughter", "USA", 90, "Comedy", 22, 8, 2003).
    find_movie_by_genre(Genre) :- movie(_, Title, _, _, Genre, _, _, _), write(Title), nl.
    find_movie_by_country(Country) :- movie(_, Title, Country, _, _, _, _, _), write(Title), nl.
    find_movie_after_year(Year) :- movie(_, Title, _, _, _, _, _, MovieYear), MovieYear > Year, write(Title), nl.
goal
    %find_movie_by_genre("Drama").
    %find_movie_by_genre("Drama"), fail.

    %find_movie_by_country("USA").
    %find_movie_by_country("USA"), fail.

    %find_movie_after_year(2005).
    find_movie_after_year(2005), fail.
