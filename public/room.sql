create table room
(
    roomid       serial
        primary key,
    roomname     varchar(50),
    roomcode     varchar(10),
    buildingname varchar(50)
);

alter table room
    owner to postgres;

