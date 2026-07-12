create table if not exists customers (
    customer_id serial primary key,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    age int
);

select *
from customers;

-- insert single row
insert into customers (first_name, last_name, email, age)
values ('John', 'Doe', 'john.doe@gmail.com', 25);

-- insert multiple rows
insert into customers (first_name, last_name)
values ('John', 'Wick'),
       ('Tony', 'Stark'),
       ('Bruce', 'Wayne');

-- insert data which has quotes,
-- to escape quotes, use '' (two single quotes)
insert into customers (first_name)
values ('Bill''O Sullivan');

-- insert data and return the inserted data
insert into customers (first_name)
values ('John''s')
returning *;

-- insert data and return the selected column inserted data
insert into customers (first_name)
values ('Modi')
returning first_name;
