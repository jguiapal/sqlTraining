create view course_subject(courseid, yearlevelid, semesterid, subject_id, subjectname) as
SELECT "subject-course".courseid,
       "subject-course".yearlevelid,
       "subject-course".semesterid,
       course_sub.value ->> 'id'::text AS subject_id,
       subject.subjectname
FROM "subject-course"
         CROSS JOIN LATERAL jsonb_array_elements("subject-course".subjects) course_sub(value)
         JOIN subject ON subject.subjectid = ((course_sub.value ->> 'id'::text)::integer);

alter table course_subject
    owner to postgres;

