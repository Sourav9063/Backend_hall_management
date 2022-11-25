
const db = require('../../database/dbconfig');
const role_query = require('./role_query');


//for internal use

getUserByEmail = async (email) => {
    try {
        const results = await db.query(`SELECT users.id, users.name  FROM users WHERE email = '${email}' LIMIT 1`);
        console.log(results);
        return results[0].id;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}




createNewUser = async (user) => {

    try {
        const results = await db.query('INSERT INTO users (name,email,password,reg) VALUES  (?,?,?,?)', [user.name, user.email, user.password, user.reg]);

        console.log(results);
        const role_id = await role_query.getRole("PUBLIC");
        const system_id = await getUserByEmail("SYSTEM@gmail.com")
        const user_id = await getUserByEmail(user.email);




        await role_query.assignRole(user_id, role_id, system_id);


        const role = await role_query.getRoleByUserId(user_id);

        return { email: user.email, user_id: user_id, ...role };
        // console.log(fields);

    }
    catch (err) {
        console.log(err);

        throw err
    }
}

signIn = async (email, password) => {

    try {
        const results = await db.query(`SELECT users.id, users.name, users.email, users.password FROM users WHERE email = '${email}' LIMIT 1`);
        console.log(results);
        if (results.length > 0) {
            if (results[0].password === password) {
                const role = await role_query.getRoleByUserId(results[0].id);
                return { email: results[0].email, user_id: results[0].id, ...role, error: null };
            }
            else {
                return { error: "Password is incorrect" }
            }
        }
        else {
            return { error: "Email is incorrect" }
        }
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}


//test
getAllUsers = async () => {
    try {
        const results = await db.query("SELECT users.id as user_id, email, name, reg, role_id,user_id,authority_id FROM users INNER JOIN assign_role ON assign_role.user_id= users.id ");

        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}








module.exports = { createNewUser, getAllUsers, signIn }







