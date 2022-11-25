const express = require('express');
const router = express.Router();
const auth = require('../services/auth_service/auth');


/* GET users listing. */
router.get('/role', auth.check_token_ROLE)

module.exports = router;