create database my_data;

select * from public.accounts;

BEGIN;
    create table roles (
        role_id serial primary key ,
        role_name varchar(255)
    );

    select * from roles;

    drop table roles;
COMMIT;