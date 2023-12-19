create procedure add_room(IN addroomname character varying, IN addroomcode character varying, IN addbuildingname character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO rooms (roomname, roomcode, buildingname)
    VALUES
    (addRoomName, addRoomCode, addBuildingName);
    commit;
END;$$;

alter procedure add_room(varchar, varchar, varchar) owner to postgres;

