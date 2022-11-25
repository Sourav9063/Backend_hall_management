const room_query = require("../services/query_services/room_query");



getEmptyRooms = async (req, res) => {
    try {
        const results = await room_query.getEmptyRooms();
        res.status(200).json({ success: true, data: results });
    } catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

addRooms = async (req, res) => {
    try {
        const results = await room_query.addRooms(req.body);
        res.status(200).json({ success: true, data: results });
    } catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

module.exports = { getEmptyRooms, addRooms }