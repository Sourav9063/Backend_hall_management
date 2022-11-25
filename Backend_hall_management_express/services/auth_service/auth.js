
// const db = require('../../database/dbconfig');
const role_query = require('../query_services/role_query')

const jwt = require('jsonwebtoken');
exports.auth_token_create = (email, user_id, role, assign_role_id) => {

    const token = jwt.sign({ email, user_id, role, assign_role_id }, process.env.JWT_SECRET, { expiresIn: '30d' });
    return token;
}

exports.check_token = (req, res, next) => {
    const authHeader = req.headers['authorization'];

    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return res.status(401).json({ success: false, error: "Please Login or Register to access" });
    jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
        if (err) return res.status(401).json({ success: false, error: err.message });
        console.log(user);
        req.user = user;
        next();
    });
}

exports.check_token_AUTHORITY = (req, res, next) => {
    const authHeader = req.headers['authorization'];

    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return res.status(401).json({ success: false, error: "Please Login or Register to access" });
    jwt.verify(token, process.env.JWT_SECRET, async (err, user) => {
        if (err) return res.status(401).json({ success: false, error: err.message });
        console.log(user);

        try {
            const assign_role_id = user.user_id;
            const real_roles = await role_query.getRolesByUserId(assign_role_id);

            if (real_roles.some(e => { return e.role === 'AUTHORITY' || e.role === 'ADMIN' || e.role === 'PROVOST' || e.role === 'DEPT_HEAD' })) {
                req.user = user;
                next();
            }
            else {
                res.status(401).json({ success: false, error: "You are not authorized to access this resource" });
            }
        }
        catch (err) {
            res.status(401).json({ success: false, error: err.message });
        }

        // res.status(401).json({ success: false, error: "You are not authorized to access this resource" });

    });
}

exports.check_token_ROLE = (req, res) => {
    const authHeader = req.headers['authorization'];

    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return res.status(401).json({ success: false, error: "Please Login or Register to access" });
    jwt.verify(token, process.env.JWT_SECRET, async (err, user) => {
        if (err) return res.status(401).json({ success: false, error: err.message });
        console.log(user);

        try {
            const assign_role_id = user.user_id;
            const real_roles = await role_query.getRolesByUserId(assign_role_id);
            console.log("Hii")
            console.log(real_roles);

            res.json({ success: true, data: real_roles });
        }
        catch (err) {
            res.status(401).json({ success: false, error: err.message });
        }

        // res.status(401).json({ success: false, error: "You are not authorized to access this resource" });

    });
}


