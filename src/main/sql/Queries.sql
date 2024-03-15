#1
SELECT *
FROM movie
WHERE duration>120
ORDER BY duration;

#2
SELECT *
FROM movie
WHERE titel LIKE '%teen%';

#3
SELECT DISTINCT movie.vote_average
FROM movie
ORDER BY vote_average DESC;

#4
SELECT movie.titel, revenue_in_euro,
       (revenue_in_euro*1.11) as revenue_in_british_pound
FROM movie
ORDER BY revenue_in_euro;

#5 OUTPUT IS: 11-3 because 10 male (tom cruz played in 2 movies), 2 female (angelina played in 2 movies)
SELECT gender.gender, COUNT(person.gender_id)
FROM movie_cast
JOIN person
    ON movie_cast.person_id = person.id
JOIN gender
    ON person.gender_id = gender.id
GROUP BY gender.gender;

#6
SELECT movie.titel, COUNT(languages_id) as number_of_languages
FROM movie
JOIN movie_language
    ON movie.id = movie_language.movie_id
GROUP BY movie.titel
HAVING number_of_languages>2
ORDER BY number_of_languages;

#7
SELECT DISTINCT movie.titel
FROM movie
JOIN movie_keywords
    ON movie.id = movie_keywords.movie_id
JOIN keyword
    ON movie_keywords.keyword_id = keyword.id
WHERE keyword IN ('space opera')
AND titel NOT LIKE '%star%';

#8
SELECT genre.genre, movie.*
FROM movie
JOIN movie_genre
    ON movie.id = movie_genre.movie_id
JOIN genre
    ON movie_genre.genre_id = genre.id
WHERE genre.genre='horror';

#9
    #USED GENRE
    SELECT genre.genre
    FROM genre
    JOIN movie_genre
        ON genre.id = movie_genre.genre_id
    GROUP BY genre.genre;

    #NOT USED
    SELECT genre.genre
    FROM genre
    LEFT JOIN movie_genre
        ON genre.id = movie_genre.genre_id
    WHERE movie_genre.genre_id IS NULL;

#10
SELECT person.name as person_name,
       COUNT(movie_id) as amount
FROM movie_cast
JOIN person
    ON movie_cast.person_id = person.id
GROUP BY person_name
ORDER BY amount DESC
LIMIT 5;

#11
SELECT *
FROM movie
WHERE duration > (SELECT AVG(duration) FROM movie);

#12
INSERT INTO usr(usr_id, login, email)
VALUE (1, 'rincewind', 'rincewind@discworld.org');

#13
INSERT INTO usr(usr_id, login, email)
VALUES
    (2, 'Bursar', 'bursar@unseen.university'),
    (3, 'archchancellor', 'arch@unseen.university');

#14
INSERT INTO message(message, user_id, receiver_id)
VALUES ('Bursar?', 3, 2),
       ('Yes, Archchancellor?', 2, 3),
       ('You aren''t a member of some secret society or somethin'', are you?', 3, 2),
       ('Me? No, Archchancellor.', 2, 3),
       ('Thenit''d be a damn good idea to take yourunderpants off your head', 3, 2);

#15
UPDATE usr
SET email='rincewind@unseen.university'
WHERE usr_id=1;

#16
DELETE FROM message
WHERE user_id=2;