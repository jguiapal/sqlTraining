create table schedules
(
    subjectscheduleid integer default nextval('schedule_subjectscheduleid_seq'::regclass) not null
        constraint schedule_pkey
            primary key,
    subjectid         integer
        constraint schedule_fk
            references subjects,
    instructorid      integer
        constraint schedule_instructor_fk
            references instructors,
    roomid            integer
        constraint schedule_room_fk
            references rooms,
    timestart         time,
    day               varchar(10),
    subjectcode       varchar(10),
    timeend           time
);

alter table schedules
    owner to postgres;

