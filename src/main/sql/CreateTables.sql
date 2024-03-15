/*ACTORS*/
    create table gender(
        id tinyint primary key auto_increment,
        gender varchar(10) unique
    );
    create table person(
        id int primary key auto_increment,
        name varchar(100),
        gender_id tinyint,
        CONSTRAINT Person_Gender FOREIGN KEY (gender_id) REFERENCES gender (id)
    );
    create table movie_cast(
        id int primary key auto_increment,
        person_id int,
        CONSTRAINT MovieCast_Person FOREIGN KEY (person_id) REFERENCES person (id)
    );

/*LANGAGE*/
    create table movie_lang(
        id tinyint primary key auto_increment,
        lang varchar(2) unique
    );

/*KEYWORDS*/
    create table keyword(
        id int primary key auto_increment,
        keyword varchar(50) unique
    );
        create table movie_keywords(
        id int primary key auto_increment,
        keyword_id int,
        CONSTRAINT MovieKeywords_Keyword FOREIGN KEY (keyword_id) REFERENCES keyword (id)
    );

/*TYPE OF MOVIE*/
    create table genre(
        id tinyint primary key auto_increment,
        genre varchar(50) unique
    );
    create table movie_genre(
        id tinyint primary key auto_increment,
        genre_id tinyint,
        CONSTRAINT MovieGenre_Genre FOREIGN KEY (genre_id) REFERENCES genre (id)
    );

/*MOVIES*/
create table movie(
    id int primary key auto_increment,
    duration smallint,
    titel varchar(150),
    vote_average float,
    revenue_in_euro float,

    cast_id int,
    lang_id tinyint,
    genre_id tinyint,
    keywords_id int,
    CONSTRAINT Movie_MovieCast      FOREIGN KEY (cast_id)     REFERENCES movie_cast     (id),
    CONSTRAINT Movie_MovieLang      FOREIGN KEY (lang_id)     REFERENCES movie_lang     (id),
    CONSTRAINT Movie_MovieGenre     FOREIGN KEY (genre_id)    REFERENCES movie_genre    (id),
    CONSTRAINT Movie_MovieKeywords  FOREIGN KEY (keywords_id) REFERENCES movie_keywords (id)
);