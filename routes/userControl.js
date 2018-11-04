const express = require('express');
const config = require('../config');
var passport = require('passport');
const userControlCtrl = config.driver === 'postgres' ? require('../postgresql/controllers/userControl') : require('./hcp/controllers/userControl');
require('../passport.js');



var api_users = express.Router();

api_users.get('/passportinicial', userControlCtrl.passportinicial );
api_users.get('/signin',  userControlCtrl.signin);
api_users.post('/inicioPassport', userControlCtrl.inicioPassport);
api_users.get('/signout', userControlCtrl.signout);
api_users.post('/PassportWithAppValidation', userControlCtrl.PassportWithAppValidation);
api_users.post('/LogIn', userControlCtrl.LogIn);

api_users.put('/updateUserPassword', userControlCtrl.updateUserPassword);
api_users.put('/editUserAct', userControlCtrl.editUserAct);

//api_users.post('/', userControlCtrl.addUser);
// api_users.put('/', userControlCtrl.updateUserPermissions);

// api_users.post('/login', userControlCtrl.login);
// api_users.delete('/', userControlCtrl.deleteUser);

module.exports = api_users;
