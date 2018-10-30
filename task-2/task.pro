domains
    country_name, capital = string
    population = integer
    area = real
predicates
    country(country_name, capital, population, area)
clauses
    country("Russia", "Moscow", 146880432, 17125191).
    country("England", "London", 55619400, 130279).
    country("Vatican City State", "Vatican City", 1000, 0.44).
    country("Switzerland", "Bern", 8508898, 41285).
goal
    country(Country, Capital, Population, _), Population > 1000000, write(Capital, ", ", Country), nl, fail.
