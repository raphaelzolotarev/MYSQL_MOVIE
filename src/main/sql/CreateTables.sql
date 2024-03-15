/*ACTORS - CASTING*/
    CREATE TABLE gender(
        id TINYINT PRIMARY KEY AUTO_INCREMENT,
        gender VARCHAR(20) UNIQUE NOT NULL
    );
    CREATE TABLE person(
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        gender_id TINYINT NOT NULL,
        CONSTRAINT Person_Gender FOREIGN KEY (gender_id) REFERENCES gender (id)
    );

/*LANGUAGES*/
    CREATE TABLE languages(
        id TINYINT PRIMARY KEY AUTO_INCREMENT,
        lang VARCHAR(2) UNIQUE NOT NULL
    );

/*KEYWORDS*/
    CREATE TABLE keyword(
        id INT PRIMARY KEY AUTO_INCREMENT,
        keyword VARCHAR(50) UNIQUE NOT NULL
    );

/*GENRES*/
    CREATE TABLE genre(
        id TINYINT PRIMARY KEY AUTO_INCREMENT,
        genre VARCHAR(50) UNIQUE NOT NULL
    );

/*MOVIES*/
    CREATE TABLE movie(
        id INT PRIMARY KEY AUTO_INCREMENT,
        duration SMALLINT NOT NULL,
        titel VARCHAR(100) NOT NULL,
        vote_average FLOAT,
        budget_in_euro INT,
        revenue_in_euro INT,
        date DATE NOT NULL
    );

    #MOVIE CASTING
    CREATE TABLE movie_cast(
        id INT PRIMARY KEY AUTO_INCREMENT,
        person_id INT NOT NULL,
        movie_id INT NOT NULL,
        CONSTRAINT MovieCast_Person FOREIGN KEY (person_id) REFERENCES person (id),
        CONSTRAINT MovieCast_Movie  FOREIGN KEY (movie_id)  REFERENCES movie  (id)
    );

    #MOVIE LANG
    CREATE TABLE movie_language(
        id INT PRIMARY KEY AUTO_INCREMENT,
        languages_id TINYINT NOT NULL,
        movie_id INT NOT NULL,
        CONSTRAINT MovieLanguage_Language FOREIGN KEY (languages_id)  REFERENCES languages (id),
        CONSTRAINT MovieLanguage_Movie    FOREIGN KEY (movie_id)      REFERENCES movie     (id)
    );

    #MOVIE KEYWORDS
    CREATE TABLE movie_keywords(
        id INT PRIMARY KEY AUTO_INCREMENT,
        keyword_id INT NOT NULL,
        movie_id INT NOT NULL,
        CONSTRAINT MovieKeywords_Keyword FOREIGN KEY (keyword_id) REFERENCES keyword (id),
        CONSTRAINT MovieKeywords_Movie   FOREIGN KEY (movie_id)   REFERENCES movie   (id)
    );

    #MOVIE GENRE
    CREATE TABLE movie_genre(
        id INT PRIMARY KEY AUTO_INCREMENT,
        genre_id TINYINT NOT NULL,
        movie_id INT NOT NULL,
        CONSTRAINT MovieGenre_Genre  FOREIGN KEY (genre_id)  REFERENCES genre  (id),
        CONSTRAINT MovieGenre_Movie  FOREIGN KEY (movie_id)  REFERENCES movie  (id)
    );

/*User*/
    CREATE TABLE message (
        msg_id INT AUTO_INCREMENT,
        message VARCHAR(255),
        user_id INT NOT NULL,
        receiver_id INT NOT NULL,PRIMARY KEY (msg_id)
    );
    CREATE TABLE usr (
        usr_id INT PRIMARY KEY AUTO_INCREMENT,
        login VARCHAR(50),
        email VARCHAR(255)
    );
