
const user_query = require('../services/query_services/user_query');
const emailverifiaction = require('../utils/emailverifiaction');
const auth_service = require('../services/auth_service/auth');
const role_query = require('../services/query_services/role_query');


createUser = async (req, res) => {
    try {

        const isEmailValid = emailverifiaction.emailVerification(req.body.email);
        const isEmailExist = await emailverifiaction.emailExists(req.body.email);

        if (!isEmailValid) {
            res.status(400).json({ success: false, error: "Email is not valid" });

        }
        else if (isEmailExist) {
            res.status(400).json({ success: false, error: "Email already exists. LogIn" });
        }


        else {
            const { email, user_id, role, id } = await user_query.createNewUser(req.body);

            const token = auth_service.auth_token_create(email, user_id, role, id);
            const assign_role_id = id;

            res.status(200).json({ success: true, access_token: token, data: [{ email, user_id, role, assign_role_id }] });
        }
    } catch (err) {

        res.status(501).json({ success: false, error: err.message });
    }
}

signIn = async (req, res) => {
    try {
        const { email, user_id, role, id, error } = await user_query.signIn(req.body.email, req.body.password);
        if (error) {
            res.status(400).json({ success: false, error: error });
        }
        else {
            const token = auth_service.auth_token_create(email, user_id, role, id);
            const assign_role_id = id;
            res.status(200).json({ success: true, access_token: token, data: [{ email, user_id, role, assign_role_id }] });
        }
    } catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}




getUsers = async (req, res) => {
    try {
        const results = await user_query.getAllUsers();

        res.status(200).json({ success: true, data: results });
    } catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}




updateUserRole = async (req, res) => {
    try {
        await role_query.updateRoleByUserId(req.body.user_id, req.user.user_id, req.body.role_id);
        res.status(200).json({ success: true, data: [], message: "Role updated successfully, Signin please" });
    } catch (err) {
        res.status(501).json({ success: false, error: err.message });
    }
}



module.exports = { createUser, getUsers, signIn, updateUserRole }