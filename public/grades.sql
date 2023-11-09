create table grades
(
    gradeid serial
        primary key,
    grade   varchar(10),
    mark    integer
);

alter table grades
    owner to postgres;

