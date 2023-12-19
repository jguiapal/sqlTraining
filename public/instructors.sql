create table instructors
(
    instructorid integer default nextval('instructor_instructorid_seq'::regclass) not null
        constraint instructor_pkey
            primary key,
    firstname    varchar(50),
    lastname     varchar(50),
    datestarted  date
);

alter table instructors
    owner to postgres;

