create table schedule
(
    subjectscheduleid serial
        primary key,
    subjectid         integer
        constraint schedule_fk
            references subject,
    instructorid      integer
        constraint schedule_ins_fk
            references instructor,
    roomid            integer
        constraint schedule_room_fk
            references room,
    timestart         time,
    day               varchar(10),
    subjectcode       varchar(10),
    timeend           time
);

alter table schedule
    owner to postgres;

