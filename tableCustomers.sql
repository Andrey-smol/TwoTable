

create table netology.customers
(
    id           bigserial PRIMARY KEY,
    name         varchar(20) NOT NULL,
    surname      varchar(20),
    age          smallint CHECK ( age > 0 and age < 100),
    phone_number varchar(20) NOT NULL
);

insert into netology.customers (name, surname, age, phone_number)
values ('Вася', 'Смирнов', 25, '+7(920)661-34-25'),
       ('alexey', 'Сидоров', 30, '+7(920)664-34-25'),
       ('Коля', 'Иванов', 30, '+7(920)664-39-25'),
       ('Оля', 'Зубарева', 40, '+7(920)667-34-25'),
       ('Alexey', 'Сойкин', 20, '+7(920)660-34-25'),
       ('alexey', 'Терентьев', 33, '+7(920)663-34-25');