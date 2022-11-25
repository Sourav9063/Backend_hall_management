const { json } = require('express');
const db = require('../../database/dbconfig')
const user_query = require('./user_query');



exports.application = async (req) => {

    try {
        console.log(req.body)

        await db.query("INSERT INTO `student_application`(`Name`, `RegNo`, `PhoneNo`, `Father_name`, `Mother_name`, `Permanent_address`, `Present_address`, `Department`, `Semester`, `Last_result`, `Merit_position`, `Approval_status`, `Addmission_year`, `Session`, `Application_date`, `user_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
            [req.body.Name, req.body.RegNo, req.body.PhoneNo, req.body.Father_name, req.body.Mother_name, req.body.Permanent_address, req.body.Present_address, req.body.Department, req.body.Semester, req.body.Last_result, req.body.Merit_position, "PENDING", req.body.Addmission_year, req.body.Session, new Date(), req.user.user_id]);
    }
    catch (err) {
        console.log(err);
        throw err;
    }

}




exports.getSortedApplication = async (start = 1, offset = 10, sortby = "Name", order = "DESC") => {

    try {
        const query = `SELECT * FROM student_application WHERE Approval_status != "ADMITTED" ORDER BY ${sortby} LIMIT ${start},${offset} `;
        console.log(query);
        const results = await db.query(query);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }



}

exports.getApplicationByRegNo = async (RegNo) => {

    try {
        const query = `SELECT * FROM student_application WHERE student_application.RegNo=?`;
        const results = await db.query(query, [RegNo]);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}


exports.updateApproval_statusbyRegNo = async (RegNo, Approval_status) => {

    try {
        const query = `UPDATE student_application SET Approval_status=? WHERE student_application.RegNo=?`;
        const results = await db.query(query, [Approval_status, RegNo]);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}

exports.deleteApplication = async (RegNo) => {

    try {
        const query = `DELETE FROM student_application WHERE student_application.RegNo=?`;
        const results = await db.query(query, [RegNo]);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}




