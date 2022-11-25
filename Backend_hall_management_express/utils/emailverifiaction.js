const db = require('../database/dbconfig')

exports.emailVerification = (email) => {


    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());

}

exports.emailExists = async (email) => {
    const result = await db.query(`SELECT * FROM users WHERE email = '${email}'`)
    console.log(result.length);
    return result.length > 0 ? true : false;

}