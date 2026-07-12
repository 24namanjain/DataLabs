create table if not exists actors
(
    actor_id      serial primary key,
    first_name    varchar(150),
    last_name     varchar(150),
    gender        char,
    date_of_birth date,
    add_date      date,
    update_date   date,
    add_by        date
);

create table if not exists directors
(
    director_id   serial primary key,
    first_name    varchar(150),
    last_name     varchar(150),
    nationality   varchar(20),
    date_of_birth date,
    add_date      date,
    update_date   date
);

select *
from actors;

select *
from directors;

create table if not exists movies
(
    movie_id        serial primary key,
    movie_name      varchar(150),
    movie_length    integer,
    movie_language  varchar(20),
    age_certificate varchar(10),
    release_date    date,
    director_id     int references directors (director_id) -- foreign key to the director's table
);

alter table movies rename column movie_language to movie_lang;

create table if not exists movies_revenues
(
    revenue_id      serial primary key,
    movie_id              int references movies (movie_id), -- foreign key to the movie's table
    revenues_domestic      numeric(10, 2),
    revenues_international numeric(10, 2)
);

select *
from movies;

select *
from movies_revenues;

create table if not exists movies_actor
(
    movie_id int references movies (movie_id),
    actor_id int references actors (actor_id),
    PRIMARY KEY (movie_id, actor_id)
);

select *
from movies_actor;
