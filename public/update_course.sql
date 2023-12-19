create procedure update_course(IN updatecourseid integer, IN updatecoursename character varying, IN updateyear integer, IN updatecredit integer)
    language plpgsql
as
$$
BEGIN
    UPDATE courses
        SET
            coursename = updateCourseName,
            yearcommenced = updateYear,
            totalcreditpoints = updateCredit
    WHERE courses.courseid = updateCourseId;
    commit;
END;$$;

alter procedure update_course(integer, varchar, integer, integer) owner to postgres;

