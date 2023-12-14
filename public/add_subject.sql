create procedure add_subject(IN newsubjectname character varying, IN newcreditpoints integer, IN newyearcommenced integer, IN newsubjectcode character varying, IN newdescription character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO subject (subjectName, creditPoints, yearCommenced, subjectCode, description)
    VALUES
    (newsubjectName, newcreditPoints, newyearCommenced, newsubjectCode, newdescription);
    commit;
END;$$;

alter procedure add_subject(varchar, integer, integer, varchar, varchar) owner to postgres;

