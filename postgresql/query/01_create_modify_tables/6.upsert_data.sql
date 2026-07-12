/*
Upsert data

1. The idea is to insert a new row if the primary key does not exist, otherwise update the existing row.

2. Syntax:
    insert into table_name
    (column_list)
    values (value_list)
    on CONFLICT target action;

3. for action:
    ON CONFLICT

    DO NOTHING
    DO UPDATE SET column_list = value_list
    WHERE condition;

*/

create table t_tags
(
    id          serial primary key,
    tag         text unique,
    update_date timestamp default now()
);

select *
from t_tags;

insert into t_tags (tag)
values ('Pen'),
       ('Pencil');

insert into t_tags (tag)
values ('Pen')
on conflict (tag)
    do nothing;

select * from t_tags;

-- EXCLUDED is a special keyword that refers to the "row" that is being inserted or updated.
insert into t_tags (tag)
values ('Pen')
on conflict (tag)
    do update set tag         = EXCLUDED.tag || ' (duplicate)',
                  update_date = now()
returning *;

