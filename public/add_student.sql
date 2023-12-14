create procedure add_student(IN newfirstname character varying, IN newlastname character varying, IN newbirthdate date, IN newadmissiondate date, IN newcourseid integer)
    language plpgsql
as
$$
BEGIN
    INSERT INTO student (firstName, lastName, birthDate, admissionDate, courseId)
    VALUES
    (newfirstName, newlastName, newbirthDate, newadmissionDate, newcourseId);

    commit;
END;$$;

alter procedure add_student(varchar, varchar, date, date, integer) owner to postgres;

