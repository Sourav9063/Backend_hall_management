const express = require('express');
const router = express.Router();
const auth = require('../services/auth_service/auth');
const room_controller = require('../controller/room_controller');
const payment_controller = require('../controller/payment_controller');
const resident_controller = require('../controller/resident_controller');
// const authority_controller = require('../controller/authority_controller');
const user_controller = require('../controller/user_controller');
const role_controller = require('../controller/role_controller');

// router.use((req, res, next) => {
//     //check authority credentials


//     next()

// });


router.get("/rooms/getSorted", auth.check_token_AUTHORITY, room_controller.getEmptyRooms);
router.post("/rooms/addRoom", auth.check_token_AUTHORITY, room_controller.addRooms);


router.post("/payment/getPaymentByRegNo", auth.check_token_AUTHORITY, payment_controller.getPaymentByRegNo);


router.post("/resident/addResidentRegNoRoomNo", auth.check_token_AUTHORITY, resident_controller.addResident);
router.post("/resident/getAllResidentsInfo", auth.check_token_AUTHORITY, resident_controller.getAllResidentInfo);
router.delete("/resident/deleteResidentByRegNo", auth.check_token_AUTHORITY, resident_controller.removeResident);


//user
router.get("/user/getAllUsers", auth.check_token_AUTHORITY, user_controller.getUsers);
router.patch("/user/updateUserRole", auth.check_token_AUTHORITY, user_controller.updateUserRole);
router.get("/role/getAllRoles", auth.check_token_AUTHORITY, role_controller.getAllRoles);





module.exports = router;