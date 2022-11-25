
const auth = require('../services/auth_service/auth');
const application_controller = require('../controller/application_controller');

const express = require('express');
const router = express.Router();




router.post("/apply", auth.check_token, application_controller.apply);
router.patch("/update", (req, res) => { });
router.delete("/delete", (req, res) => { });

router.post("/get", auth.check_token_AUTHORITY, application_controller.getSortedApplication);
router.patch("/updateApproval_statusbyRegNo", auth.check_token_AUTHORITY, application_controller.updateApproval_statusbyRegNo);

module.exports = router;