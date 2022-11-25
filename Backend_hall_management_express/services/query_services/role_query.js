
const db = require('../../database/dbconfig')



getRole = async (role) => {

    try {
        const results = await db.query(`SELECT * FROM roles WHERE role = '${role}' LIMIT 1`);

        console.log(results);



        return results[0].role_id;

    }
    catch (err) {
        console.log(err);


    }
}
getAllRoles = async () => {

    try {
        const results = await db.query(`SELECT * FROM roles`);

        console.log(results);



        return results;
    }
    catch (err) {
        console.log(err);
        throw err;

    }
}





assignRole = async (user_id, role_id, authority_id) => {

    try {
        const results = await db.query('INSERT INTO assign_role (user_id,role_id,authority_id) VALUES  (?,?,?)', [user_id, role_id, authority_id]);

        console.log(results);

        // console.log(fields);

    }
    catch (err) {
        console.log(err);

        throw err
    }
}

getRoleByUserId = async (user_id) => {

    try {
        const results = await db.query(`SELECT roles.role, assign_role.id FROM roles INNER JOIN assign_role ON roles.role_id = assign_role.role_id WHERE assign_role.user_id = '${user_id}' ORDER BY assign_role.id DESC LIMIT 1`);
        console.log(results);
        return results[0];
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}

getRolesByUserId = async (user_id) => {

    try {
        const results = await db.query(`SELECT roles.role, assign_role.id FROM roles INNER JOIN assign_role ON roles.role_id = assign_role.role_id WHERE assign_role.user_id = '${user_id}' ORDER BY assign_role.id DESC LIMIT 1`);
        console.log(results);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}

updateRoleByUserId = async (user_id, authority_id, role_id) => {

    try {
        const results = await db.query(`UPDATE assign_role SET role_id = ${role_id}, authority_id = '${authority_id}' WHERE user_id = '${user_id}' ORDER BY id DESC LIMIT 1`);
        console.log(results);
        return results;
    }
    catch (err) {
        console.log(err);
        throw err;
    }
}






module.exports = { getRole, assignRole, getRoleByUserId, getRolesByUserId, updateRoleByUserId,getAllRoles }




// 1
// APPLICANT
	

// 2
// SYSTEM
	

// 3
// PUBLIC
	

// 4
// RESIDENT
	

// 5
// AUTHORITY
	

// 6
// DEPT_HEAD
	

// 7
// PROVOST