create table years
(
    yearlevelid integer default nextval('year_yearlevelid_seq'::regclass) not null
        constraint year_pkey
            primary key,
    yearlevel   varchar(10)
);

alter table years
    owner to postgres;

