create table student
(
    studentid     serial
        primary key,
    firstname     varchar(50),
    lastname      varchar(50),
    birthdate     date,
    admissiondate date,
    courseid      integer
        constraint student_fk
            references course
);

alter table student
    owner to postgres;

