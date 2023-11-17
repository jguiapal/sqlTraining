create procedure add_subject(IN subjectname character varying, IN creditpoints integer, IN yearcommenced integer, IN subjectcode character varying, IN description character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO subject (subjectName, creditPoints, yearCommenced, subjectCode, description)
    VALUES
    (subjectName, creditPoints, yearCommenced, subjectCode, description);
    commit;
END;$$;

alter procedure add_subject(varchar, integer, integer, varchar, varchar) owner to postgres;

