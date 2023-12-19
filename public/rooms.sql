create table rooms
(
    roomid       integer default nextval('room_roomid_seq'::regclass) not null
        constraint room_pkey
            primary key,
    roomname     varchar(50),
    roomcode     varchar(10),
    buildingname varchar(50)
);

alter table rooms
    owner to postgres;

