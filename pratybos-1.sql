USE `books`;
-- 1. Išrinkite visus įrašus iš Knygų lentelės.
SELECT * FROM `books`;

-- 2. Išrinkite tik Knygų pavadinimus abėcėles tvarka.
SELECT `title`
FROM `books`
ORDER BY `title`;

-- 3. Suskaičiuokite, kiek knygų kiekvieno autoriaus yra knygų lentelėje.
SELECT `authorId`, `title`, COUNT(*)
FROM `books`
GROUP BY `authorId`;
