
select no.product_name
from netology.orders as no
where no.customer_id IN (select ns.id from netology.customers as ns where name ~* 'alexey');

select product_name
from netology.orders
         join netology.customers ON orders.customer_id = customers.id and name ~* 'alexey';

select name, product_name
from netology.orders
         join netology.customers ON orders.customer_id = customers.id
where name ~* 'alexey';