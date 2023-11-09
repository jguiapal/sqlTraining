create table year
(
    yearlevelid serial
        primary key,
    yearlevel   varchar(10)
);

alter table year
    owner to postgres;

