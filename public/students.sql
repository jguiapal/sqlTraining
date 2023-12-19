create table students
(
    studentid     serial
        constraint students_pkey1
            primary key,
    firstname     varchar(255),
    lastname      varchar(255),
    birthdate     date,
    courseid      integer
        references courses,
    admissiondate date
);

alter table students
    owner to postgres;

