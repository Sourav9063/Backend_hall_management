
const resident_query = require('../services/query_services/resident_query');
const application_query = require('../services/query_services/application_query');
const role_query = require('../services/query_services/role_query');
const room_query = require('../services/query_services/room_query');

exports.getResidentByRegNo = async (req, res) => {
    try {
        const { RegNo } = req.body;
        const result = await resident_query.getAllInfoOfResidentByRegNo(RegNo);
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

exports.getResidentsByRoomNo = async (req, res) => {
    try {
        const { RoomNo } = req.body;
        const result = await resident_query.getAllResidentsOfRoom(RoomNo);
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

exports.getAllResidentInfo = async (req, res) => {
    try {
        const { start, offset, sort_by } = req.body;
        const result = await resident_query.getAllResidentInfo(
            start, offset, sort_by
        );
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

exports.getRoomFromRegNo = async (req, res) => {
    try {
        const { RegNo } = req.body;
        const result = await resident_query.getRoomFromRegNo(RegNo);
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

// exports.deleteResidentByRegNo = async (req, res) => {
//     try {
//         const { RegNo } = req.body;
//         const result = await resident_query.deleteResidentByRegNo(RegNo);
//         res.status(200).json({ success: true, data: [] });
//     }
//     catch (err) {
//         res.status(501).json({ success: false, error: err.message });
//     }
// }


exports.addResident = async (req, res) => {
    try {
        const { RegNo, RoomNo } = req.body;

        console.log(req.user);


        const up = await room_query.updateRoom(RoomNo, "ADD");

        console.log(up);
        const result = await resident_query.addResident(RegNo, RoomNo);

        await application_query.updateApproval_statusbyRegNo(RegNo, 'ADMITTED');

        students_user_id = await resident_query.getAllInfoOfResidentByRegNo(RegNo);


        await role_query.updateRoleByUserId(students_user_id[0].user_id, req.user.user_id, 4);

        res.status(200).json({ success: true, data: [] });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

exports.removeResident = async (req, res) => {
    try {


        const { RegNo } = req.body;
        const roomid = await resident_query.getAllInfoOfResidentByRegNo(RegNo);
        console.log(roomid);
        const { RoomNo } = roomid[0];
        const up = await room_query.updateRoom(RoomNo, "REMOVE");
        students_user_id = await resident_query.getAllInfoOfResidentByRegNo(RegNo);

        console.log(students_user_id[0]);
        console.log(req.user);

        await role_query.updateRoleByUserId(students_user_id[0].user_id, req.user.user_id, 3);

        const result = await resident_query.deleteResidentByRegNo(RegNo);
        res.status(200).json({ success: true, data: [] });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}
