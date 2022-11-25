const express = require('express');
const router = express.Router();

const user_controller = require('../controller/user_controller');

router.post("/registration", user_controller.createUser);
router.post("/signIn", user_controller.signIn);
router.post("/logIn", user_controller.signIn);
router.post("/logout", (req, res) => { });
router.post("/forgot-password", (req, res) => { });
router.post("/reset-password", (req, res) => { });
router.post("/change-email", (req, res) => { });
router.get("/users", user_controller.getUsers);



module.exports = router;