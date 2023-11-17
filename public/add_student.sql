create procedure add_student(IN firstname character varying, IN lastname character varying, IN birthdate date, IN admissiondate date, IN courseid integer)
    language plpgsql
as
$$
BEGIN
    INSERT INTO student (firstName, lastName, birthDate, admissionDate, courseId)
    VALUES
    (firstName, lastName, birthDate, admissionDate, courseId);

    commit;
END;$$;

alter procedure add_student(varchar, varchar, date, date, integer) owner to postgres;

