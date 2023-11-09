create table semester
(
    semesterid serial
        primary key,
    semester   integer
);

alter table semester
    owner to postgres;

