create table courses
(
    courseid          integer default nextval('course_courseid_seq'::regclass) not null
        constraint course_pkey
            primary key,
    coursename        varchar(255),
    totalcreditpoints integer,
    yearcommenced     integer
);

alter table courses
    owner to postgres;

create index course_name
    on courses (coursename);

