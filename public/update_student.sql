create procedure update_student(IN updatestudentid integer, IN updatefirstname character varying, IN updatelastname character varying, IN updatebirthdate date, IN updateadmissiondate date, IN updatecourseid integer)
    language plpgsql
as
$$
BEGIN
    UPDATE students
        SET firstname = updateFirstName,
            lastname = updateLastName,
            birthdate = updateBirthDate,
            admissiondate = updateAdmissionDate,
            courseid = updateCourseId
    WHERE students.studentid = updateStudentId;
    commit;
END;$$;

alter procedure update_student(integer, varchar, varchar, date, date, integer) owner to postgres;

