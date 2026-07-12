select *
from customers;

-- update single column
update customers
set email='a2b@b.com'
where customer_id = 1;

-- update multiple columns
update customers
set email='a4b@b.com',
    age=30
where customer_id = 1
returning *;

-- update all record
alter table customers
    add column is_enabled character varying(2) default 'Y';

alter table customers
    drop column is_enabled;

alter table customers
    add column is_enabled character varying(2);

update customers
set is_enabled='Y'
returning *;
