create table "subject-taken"
(
    subjecttakenid serial
        primary key,
    studentid      integer
        constraint subject_taken_stud_fk
            references student,
    subjectid      integer
        constraint subject_taken_fk
            references subject,
    yearlevelid    integer
        constraint subject_taken_year_fk
            references year,
    semesterid     integer
        constraint subject_taken_sem_fk
            references semester,
    gradeid        integer
        constraint subject_taken_grade_fk
            references grades
);

alter table "subject-taken"
    owner to postgres;

