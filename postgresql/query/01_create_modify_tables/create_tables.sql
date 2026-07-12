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

select * from actors;
select * from directors;
