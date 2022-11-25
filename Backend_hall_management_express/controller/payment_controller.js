
const payment_query = require('../services/query_services/payment_query');



exports.getPaymentByRegNo = async (req, res) => {
    try {
        const { RegNo } = req.body;
        const result = await payment_query.getPaymentByRegNo(RegNo);
        res.status(200).json({ success: true, data: result });
    }
    catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}

