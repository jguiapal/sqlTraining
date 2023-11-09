create table "subject-course"
(
    subjectcourseid serial
        primary key,
    courseid        integer
        constraint subject_course_fk
            references course,
    subjects        jsonb,
    yearlevelid     integer
        constraint subject_course_year_fk
            references year,
    semesterid      integer
        constraint subject_course_sem_fk
            references semester
);

alter table "subject-course"
    owner to postgres;

