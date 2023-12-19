create table "subject-taken"
(
    subjecttakenid integer default nextval('"subject-taken_subjecttakenid_seq1"'::regclass) not null
        constraint "subject-taken_pkey1"
            primary key,
    studentid      integer,
    subjectid      integer
        constraint subject_taken_fk
            references subjects,
    yearlevelid    integer
        constraint subject_taken_year_fk
            references years,
    semesterid     integer
        constraint subject_taken_sem_fk
            references semesters,
    gradeid        integer
        constraint subject_taken_grade_fk
            references grades
);

alter table "subject-taken"
    owner to postgres;

