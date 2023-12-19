create procedure add_subject_course(IN addcourseid integer, IN addsubjects jsonb, IN addyearlevel integer, IN addsemester integer)
    language plpgsql
as
$$
BEGIN
    insert into "subject-course" (courseid, subjects, yearlevelid, semesterid)
    VALUES
    (addCourseId, addSubjects, addYearLevel,addSemester);
    commit;
END;$$;

alter procedure add_subject_course(integer, jsonb, integer, integer) owner to postgres;

