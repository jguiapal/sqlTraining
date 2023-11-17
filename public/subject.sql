create table subject
(
    subjectid     serial
        primary key,
    subjectname   varchar(255),
    creditpoints  integer,
    yearcommenced integer,
    subjectcode   varchar(10),
    description   varchar(255)
);

alter table subject
    owner to postgres;

create index subject_code
    on subject (subjectcode);

