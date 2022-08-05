let { registration,login} = require("../controller/users");
var express = require('express');
var router = express.Router();

router.post("/registration", registration);
router.post("/user-login", login)

module.exports = router