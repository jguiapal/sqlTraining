create table "subject-course"
(
    subjectcourseid serial
        primary key,
    courseid        integer
        constraint subject_course_fk
            references courses,
    subjects        jsonb,
    yearlevelid     integer
        constraint subject_course_year_fk
            references years,
    semesterid      integer
        constraint subject_course_sem_fk
            references semesters
);

alter table "subject-course"
    owner to postgres;

