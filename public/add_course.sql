create procedure add_course(IN addcoursename character varying, IN addtotalcreditpoints integer, IN addyearcommenced integer)
    language plpgsql
as
$$
BEGIN
    INSERT INTO courses (coursename, totalcreditpoints, yearcommenced)
    VALUES
    (addCourseName, addTotalCreditPoints, addYearCommenced);
    commit;
END;$$;

alter procedure add_course(varchar, integer, integer) owner to postgres;

