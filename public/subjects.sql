create table subjects
(
    subjectid     integer default nextval('subject_subjectid_seq'::regclass) not null
        constraint subject_pkey
            primary key,
    subjectname   varchar(255),
    creditpoints  integer,
    yearcommenced integer,
    subjectcode   varchar(10),
    description   varchar(255)
);

alter table subjects
    owner to postgres;

create index subject_code
    on subjects (subjectcode);

