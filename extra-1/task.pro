domains
    name, speciality, education_type = string
    course = integer
predicates
    student(name, speciality, education_type, course)
clauses
    student("Artem", "ISIT", "Budget", 1).
    student("Tema", "AE", "Budget", 1).
    student("Ivan", "SP", "Comm", 2).
    student("Kiri", "ISIT", "Budget", 1).
goal
    student(Name, "ISIT", "Budget", 1).
