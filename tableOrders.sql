

create table netology.orders
(
    id           bigserial PRIMARY KEY,
    date         varchar(50) default now(),
    customer_id  bigint,
    product_name text NOT NULL,
    amount       int CHECK ( amount > 0 ),
    FOREIGN KEY (customer_id) references netology.customers (id) ON DELETE CASCADE
);


insert into netology.orders (customer_id, product_name, amount)
values (1, 'Молоко', 150),
       (2, 'Хлеб', 150),
       (3, 'Сыр', 150),
       (4, 'Молоко', 150),
       (5, 'Масло', 150),
       (6, 'Сыр', 150);
