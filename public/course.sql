create table course
(
    courseid          serial
        primary key,
    coursename        varchar(255),
    totalcreditpoints integer,
    yearcommenced     integer
);

alter table course
    owner to postgres;

