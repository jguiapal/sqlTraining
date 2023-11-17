create table instructor
(
    instructorid serial
        primary key,
    firstname    varchar(50),
    lastname     varchar(50),
    datestarted  date
);

alter table instructor
    owner to postgres;

create index teacher_name
    on instructor (firstname, lastname);

