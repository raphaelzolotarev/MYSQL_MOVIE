/*ACTORS*/
    INSERT INTO gender(gender) VALUES
        ('male'),
        ('female'),
        ('non-binary'),
        ('genderqueer'),
        ('genderfluid'),
        ('agender'),
        ('bigender'),
        ('two-spirit'),
        ('demiboy'),
        ('demigirl');

    INSERT INTO person(name, gender_id) VALUES
        ('Daniel Radcliff', 1),
        ('Sasha Baron Cohen', 1),
        ('Tom Cruz', 1),
        ('Mads Mikkelsen', 1),
        ('Clautilde Coureau', 2),
        ('Angelina Jolie', 2),
        ('Brad Pitt', 1),
        ('Mel Gibson', 1),
        ('Will Smith', 1),
        ('Al Pacino', 1),
        ('John Travolta', 1),
        ('Matthew McConaughey', 1);

/*LANGUAGES*/
    INSERT INTO languages(lang) VALUES
        ('en'),
        ('nl'),
        ('de'),
        ('fr'),
        ('es'),
        ('it'),
        ('ru'),
        ('pt'),
        ('tr'),
        ('uk');

/*KEYWORD*/
    INSERT INTO keyword(keyword) VALUES
        ('space opera'),
        ('historical'),
        ('suspense'),
        ('fantasy'),
        ('middle age'),
        ('cyberpunk'),
        ('mystery'),
        ('animation'),
        ('documentary'),
        ('musical'),
        ('black humor'),
        ('lgbt'),
        ('cult'),
        ('treasure hunt'),
        ('gore'),
        ('absurd'),
        ('cop'),
        ('gangster'),
        ('drugs'),
        ('duo');

/*GENRE*/
    INSERT INTO genre(genre) VALUES
        ('horror'),
        ('action'),
        ('fantastic'),
        ('adventure'),
        ('comedy'),
        ('thriller'),
        ('western'),
        ('sci-fi'),
        ('family'),
        ('romantic'),
        ('psychological'),
        ('drama');

/*MOVIES*/
INSERT INTO movie (duration, titel, vote_average, budget_in_euro, revenue_in_euro, date) VALUES
    (112, 'The Lost City',      6.1, 68000000,  190000000, '2022-03-25'),
    (81,  'Brüno',              5.9, 42000000,  138800000, '2009-07-10'),
    (159, 'Eyes Wide Shut',     7.5, 65000000,  162100000, '1999-09-03'),
    (118, 'Polar',              6.3, 5000000,   20000000,  '2019-01-25'),
    (118, 'Babysitting teen',   6.7, 3400000,   20000000,  '2014-04-16'),
    (85,  'Maleficent',         6.9, 186000000, 758500000, '201-05-02'),
    (178, 'Braveheart',         8.3, 65000000,  213200000, '1995-05-19'),
    (119, 'Bad Boys',           6.8, 19000000,  141100000, '1995-07-04'),
    (170, 'Scarface',           8.3, 25000000,  66000000,  '1983-12-09'),
    (154, 'Pulp Fiction',       8.9, 18500000,  107930000, '1994-11-09'),
    (126, 'Mr & Mrs Smith',     6.5, 110000000, 487300000, '2005-06-07'),
    (124, 'Oblivion',           7,   120000000, 287900000, '2013-04-10'),
    (169, 'Interstellar star',  8.7, 165000000, 701700000, '2014-11-05');

    #MOVIE CASTING
    INSERT INTO movie_cast(person_id, movie_id) VALUES
        (1,1),
        (2,2),
        (3,3),
        (4,4),
        (5,5),
        (6,6),
        (6,11),
        (7,11),
        (8,7),
        (9,8),
        (10,9),
        (11,10),
        (3,12),
        (12,13);

    #MOVIE LANG
    INSERT INTO movie_language(languages_id, movie_id) VALUES
        #english
        (1,1),
        (1,2),
        (1,3),
        (1,4),
        (1,6),
        (1,7),
        (1,8),
        (1,9),
        (1,10),
        (1,11),
        (1,12),
        (1,13),
        #french
        (4,1),
        (4,2),
        (4,3),
        (4,4),
        (4,5),
        (4,6),
        (4,7),
        (4,8),
        (4,9),
        (4,10),
        (4,11),
        (4,12),
        (4,13),
        #italian
        (6,7),
        #portuguese
        (8,10),
        #turkish
        (9,12);

    #MOVIE KEYWORDS
    INSERT INTO movie_keywords(keyword_id, movie_id) VALUES
        (14,1),
        (11,2),
        (12,2),
        (3,3),
        (7,3),
        (15,4),
        (16,5),
        (4,6),
        (8,6),
        (2,7),
        (17,8),
        (18,9),
        (19,9),
        (13,10),
        (20,11),
        (1,12),
        (1,13);

    #MOVIE GENRE
    INSERT INTO movie_genre(genre_id, movie_id) VALUES
        (4,1),
        (5,2),
        (11,3),
        (2,4),
        (1,4),
        (5,5),
        (3,6),
        (12,7),
        (2,8),
        (6,9),
        (5,10),
        (2,11),
        (8,12),
        (8,13);