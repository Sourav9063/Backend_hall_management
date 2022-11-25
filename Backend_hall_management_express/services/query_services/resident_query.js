const db = require('../../database/dbconfig');


exports.addResident = async (RegNo, RoomNo) => {

    try {
        const queryString = "INSERT INTO `resident`(`RegNo`, `RoomNo`, `Admission_date`, `Expire_date`) VALUES (?,?,?,?)";
        const results = await db.query
            (queryString, [RegNo, RoomNo, new Date(), new Date(new Date().getFullYear(), 11, 31)]);


    }
    catch (err) {
        console.log(err);
        throw err;
    }

}



exports.getAllResidentsOfRoom = async (RoomNo) => {
    try {
        const queryString = "SELECT * FROM `resident` INNER JOIN student_application ON student_application.RegNo=resident.RegNo  WHERE RoomNo=?";
        const results = await db.query

            (queryString, [RoomNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }


}

exports.getAllInfoOfResidentByRegNo = async (RegNo) => {
    try {
        const queryString = "SELECT * FROM `resident` INNER JOIN student_application ON student_application.RegNo=resident.RegNo  WHERE resident.RegNo=? ORDER BY resident.Admission_date DESC LIMIT 1";
        const results = await db.query

            (queryString, [RegNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }

}

exports.getAllResidentInfo = async (start, offset, sort_by) => {
    try {
        if (sort_by == undefined) {
            sort_by = "Admission_date DESC";
        }
        const queryString = "SELECT * FROM `resident` INNER JOIN student_application ON student_application.RegNo=resident.RegNo  ORDER BY " + sort_by + " LIMIT ?,?";
        console.log(queryString);
        const results = await db.query

            (queryString, [start, offset]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}


exports.getRoomFromRegNo = async (RegNo) => {

    try {
        const queryString = "SELECT * FROM `resident` WHERE RegNo=?";
        const results = await db.query
            (queryString, [RegNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}

exports.deleteResidentByRegNo = async (RegNo) => {
    try {
        const queryString = "DELETE FROM `resident` WHERE RegNo=?";
        const results = await db.query
            (queryString, [RegNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}