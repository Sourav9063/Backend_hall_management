
const application_query = require('../services/query_services/application_query');



getSortedApplication = async (req, res) => {

    try {
        const { sort_by, order, start, offset } = req.body;
        if (sort_by == undefined) {
            sort_by = "Last_result DESC , Merit_position ASC";
        }

        let result = await application_query.getSortedApplication(start, offset, sort_by, order);
        res.status(200).json({ success: true, data: result });

    }
    catch (err) {
        console.log(err);
        res.status(501).json({ success: false, error: err.message });
    }


}


apply = async (req, res) => {
    try {

        const result = await application_query.application(req);
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        console.log(err);
        res.status(501).json({ success: false, error: err.message });
    }
}


updateApproval_statusbyRegNo = async (req, res) => {
    try {
        const { RegNo, Approval_status } = req.body;
        const result = await application_query.updateApproval_statusbyRegNo(RegNo, Approval_status);
        res.status(200).json({ success: true, data: [] });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}


module.exports = { getSortedApplication, apply, updateApproval_statusbyRegNo }