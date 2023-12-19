create procedure update_subject(IN newsubjectname character varying, IN newcreditpoints integer, IN newyearcommenced integer, IN newsubjectcode character varying, IN newdescription character varying, IN updatesubjectid integer)
    language plpgsql
as
$$
BEGIN
    UPDATE subjects
        SET subjectname = newSubjectName,
            creditpoints =newCreditPoints,
            yearcommenced = newYearCommenced,
            subjectcode = newSubjectCode,
            description = newDescription
    WHERE subjects.subjectid = updateSubjectID;
    commit;
END;$$;

alter procedure update_subject(varchar, integer, integer, varchar, varchar, integer) owner to postgres;

