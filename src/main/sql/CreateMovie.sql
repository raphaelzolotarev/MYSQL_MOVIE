create table movie(
    id int primary key auto_increment,
    titel varchar(255),
    duration tinyint,
    revenue_in_euro float,
    vote_average float,
    moviecastid int,
    movielangid int,
    CONSTRAINT movie_moviecast FOREIGN KEY (moviecastid)REFERENCES movie_cast (id),
    CONSTRAINT movie_movielang FOREIGN KEY (movielangid)REFERENCES movie_lang (id)
);