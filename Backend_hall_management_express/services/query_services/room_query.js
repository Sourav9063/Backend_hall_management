const db = require('../../database/dbconfig')




getEmptyRooms = async () => {


    try {
        const query = "SELECT * FROM `room` WHERE room.Capacity>room.Resident_number ORDER BY room.Capacity-room.Resident_number DESC;"

        const results = await db.query(query);
        console.log(results);
        return results;
    }
    catch (err) {

        console.log(err);
        throw err;
    }




}

addRooms = async (room) => {
    console.log(room);
    try {
        const queryString = "INSERT INTO `room`(`RoomNo`, `Block`, `Floor`, `Capacity`, `Resident_number`) VALUES (?,?,?,?,?)"
        const results = await db.query(queryString, [room.RoomNo, room.Block, room.Floor, room.Capacity, room.Resident_number]);
    } catch (err) {
        console.log(err);
        throw err;
    }

}

getRoomByRoomNo = async (id) => {
    try {
        const queryString = "SELECT * FROM `room` WHERE room.RoomNo=?"
        const results = await db.query
            (queryString, [id]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}

updateRoom = async (RoomNo, add_remove) => {
    try {
        const room = await getRoomByRoomNo(RoomNo);
        console.log(room);
        if (add_remove === "ADD" && room[0].Capacity <= room[0].Resident_number) {
            throw new Error("Room is full");
        }
        const queryString = "UPDATE `room` SET `Resident_number`=? WHERE room.RoomNo=?"
        const results = await db.query
            (queryString, [add_remove === "ADD" ? room[0].Resident_number + 1 : room[0].Resident_number == 0 ? 0 : room[0].Resident_number - 1, RoomNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}




module.exports = { getEmptyRooms, addRooms, updateRoom }


