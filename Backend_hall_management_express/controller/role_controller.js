const role_query = require('../services/query_services/role_query');



exports.getAllRoles = async (req, res) => {
    try {
        const result = await role_query.getAllRoles();
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}