const db = require('../../database/dbconfig');




exports.addPayment = async (payment) => {

    try {

        const queryString = "INSERT INTO `payment_record`(`RegNo`, `Amount`, `Bank_recipt_no`, `Payment_date`, `Expiration_date`) VALUES (?,?,?,?,?)";

        const results = await db.query
            (queryString, [payment.RegNo, payment.Amount, payment.Bank_recipt_no, payment.Payment_date, new Date(new Date().getFullYear(), 11, 31)]);






    }
    catch (err) {
        console.log(err);
        throw err;
    }

}


exports.getPaymentByRegNo = async (RegNo) => {
    try {
        const queryString = "SELECT * FROM `payment_record` WHERE payment_record.RegNo=? ORDER BY payment_record.Payment_date DESC LIMIT 1"
        const results = await db.query
            (queryString, [RegNo]);
        return results;
    } catch (err) {
        console.log(err);
        throw err;
    }
}