var config = require('./config.js'),
    LocalStrategy = require('passport-local').Strategy,
    Model = require('./postgresql/models/userControl.js'),
    bcrypt = require('bcrypt');
User = Model.User;


module.exports = function (passport) {

    // console.log('passport - Inicia');

    passport.use(new LocalStrategy(function (username, password, done) {
        // console.log('----------- passport --------------------');
        Model.User(username).then(function (data) {
            var user = data;

            if (user.length < 1) {
                // console.log('Usuario Invalido');
                return done(null, false);
            } else {
                user = JSON.stringify(data);
                try {
                    const first = data[0]
                    bcrypt.compare(password, first["password"], function (err, res) {
                        if (res) {
                            // console.log('Se Encontro');
                            return done(null, first)

                        } else {
                            // console.log('contraseña incorrecta');
                            return done(null, false)
                        }
                    })
                } catch (error) {
                    console.log(error);
                }


            }
        })
    }))

    passport.serializeUser(function (user, done) {
        // console.log('-- serializeUser --');
        done(null, user.user_id);
    });

    passport.deserializeUser(function (id, done) {
        // console.log('-- deserializeUser --');
        Model.grabUserCredentials(id).then(function (data, err) {
            if (err) {
                done(err);
            }
            done(null, data);
        });
    });

}