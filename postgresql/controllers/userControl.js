// const config = require('../../config');
const DBlayer = require('../models/userControl');
const DBlayerApp = require('../models/app_rolControl');
var bcrypt = require('bcrypt');
var BCRYPT_SALT_ROUNDS = 12;
var passport = require('passport');
//var prueba = require('../Apps/userControl/webapp/controller/App.controller.js')
// passport = require('../../passport.js');

exports.inicioPassport = function (req, res, next) {
    passport.authenticate('local', function (err, user, info) {

        if (err) {           
            return res.status(309).send({
                title: 'err'
            });
        }
        if (!user) {
            return res.status(311).send({
                title: 'userControl'
            });
        };
        return req.logIn(user, function (err) {
            if (err) {
                return res.status(309).send({
                    title: 'userControl'
                });
            } else {
                // console.log("LLegamos a passportinicial - principal");
                if (!req.isAuthenticated()) {
                    res.redirect('/userControl/signin');
                } else {
                    var user = req.user;
                    // console.log(user);
                    return res.status(301).send({
                        title: 'launchpad',
                        user: user
                    });
                }
            }
        });
    })(req, res, next);
    // DBlayer.DBfindUser(req.body.username)
    // .then(function (data) {
    //     res.status(200).json({
    //         statusCode: 200,
    //        
    //     });
    // })
    // .catch(function (err) {
    //     res.status(500).send(err);
    // });
};

exports.passportinicial = function (req, res, next) {
    // If user is not authenticated, redirect them
    // to the signin page.
    if (!req.isAuthenticated()) {
        res.redirect('/userControl/signin');
    } else {
        var user = req.user;
        return res.status(301).send({
            title: 'launchpad',
            user: user
        });
    }
}

exports.signin = function (req, res, next) {
     if (req.isAuthenticated()) {
        res.redirect('/userControl/passportInicial');
    } else {
        // console.log('No session');
        return res.status(309).send({
            title: 'userControl'
        });
    }
}

exports.signout = function (req, res, next) {
    if (!req.isAuthenticated()) {
        return res.redirect('/userControl/signin');
    } else {
        req.logOut();
        cookie = req.cookies;
        console.log(cookie);
        req.session.destroy(function (err) {
            return res.status(310).send({
                title: 'signout'
            });
            // return res.redirect('/userControl/signin');
        });
    }
}

exports.PassportWithAppValidation = function (req, res, next) {
//  console.log('PassportWithAppValidation');
 
    if (req.isAuthenticated()) {
        DBlayerApp.DBfindAppRolEspecial(req.user[0]["rol_id"] , req.body.Appname)
        .then(function (data){
            return res.status(200).send(data);
        });

    } else {
        return res.status(309).send({
            title: 'userControl'
        });
    }
}


exports.LogIn = function (req, res, next) {
     //console.log(req);
     if (req.isAuthenticated()) {
        return res.status(301).send({
            title: 'launchpad',
            user: req.user
        });
    } else {
        return res.status(309).send({
            title: 'userControl'
        });
    }
}


exports.editUserAct = function (req, res) {
    DBlayer.DBeditUserAct(req.body.user_id, req.body.active)
        .then(function (data) {
            res.status(200).json({
                statusCode: 200,
                data: data
            });
        })
        .catch(function (err) {
            res.status(500).send(err);
        });
};


exports.updateUserPassword = function (req, res) {
    bcrypt.hash(req.body.password, BCRYPT_SALT_ROUNDS)
        .then(function (hashedPassword) {
            DBlayer.DBupdateUserPassword(req.body.user_id, hashedPassword)
                .then(function (data) {
                    res.status(200).json({
                        statusCode: 200,
                        data: data
                    });
                })
                .catch(function (err) {
                    res.status(500).send(err);
                });
        })

};
