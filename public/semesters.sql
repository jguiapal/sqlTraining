create table semesters
(
    semesterid integer default nextval('semester_semesterid_seq'::regclass) not null
        constraint semester_pkey
            primary key,
    semester   integer
);

alter table semesters
    owner to postgres;

