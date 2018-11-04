const express = require('express');
const bodyParser = require('body-parser');
const fs =  require('fs');
const app = express();
const config = require('./config');
const helmet = require('helmet');


//Alex Prueba --------------------------------------------------------------------
var 
    path          = require('path'),
    passport      = require('passport'),
	session       = require('express-session'),
	cookieParser  = require('cookie-parser'),
	logger 		  = require('morgan'),
	cors		  = require('cors');
    PORT          = process.env.PORT || config.port;

//--------------------------------------------------------------------


const api_users = require('./routes/userControl');
const api_apps = require('./routes/appControl');
const api_userapps = require('./routes/user_appControl');
const api_userM = require('./routes/userManagement');
const api_app_RolControl = require('./routes/app_rolControl');

//New
const api_boatproducts = require('./routes/boatproducts');
const api_clients = require('./routes/clients');
const api_bill = require('./routes/bill');

// Evitar problemas de CORS:
app.use(function(req, res, next) {

	// Request headers you wish to allow
	res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');

	// Website you wish to allow to connect
	res.setHeader('Access-Control-Allow-Origin', '*');

	// Request methods you wish to allow
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');

	// Set to true if you need the website to include cookies in the requests sent
	// to the API (e.g. in case you use sessions)
	res.setHeader('Access-Control-Allow-Credentials', true);

	// Pass to next layer of middleware
	next();
});

const appLaunchpad = '/ARP_FRONTEND/launchpad/webapp';
const appConfiguration = __dirname + '/ARP_FRONTEND/technicalConfiguration/webapp';


const appUsers = '/ARP_FRONTEND/userControl/webapp';

// console.log(appLaunchpad);
console.log("http://localhost:3009/Apps/launchpad/webapp/");

//Alex Prueba --------------------------------------------------------------------
require('./passport.js')(passport);


// app.use(logger('dev'));

app.use(cors());
app.use(cookieParser());

app.use(bodyParser.json({
  limit: '50mb'
}));

app.use(bodyParser.urlencoded({
  limit: '50mb',
  parameterLimit: 1000000,
  extended: false
}));



app.use(express.static(path.join(__dirname)));
app.use(session({ secret: 'passport-tutorial', resave: true,rolling:true ,saveUninitialized: false}));

app.use(helmet())

app.use(passport.initialize());
app.use(passport.session());
//--------------------------------------------------------------------------------

app.use('/launchpad', express.static(appLaunchpad));
app.use('/userControl', express.static(appUsers));
app.use('/app2', express.static(appConfiguration));


app.use('/userControl', express.static(appUsers));

app.use('/userControl',api_users);
app.use('/appControl',api_apps);
app.use('/user_appControl',api_userapps);
app.use('/userManagement',api_userM);
app.use('/app_rolControl',api_app_RolControl);

//New
app.use('/boatproducts',api_boatproducts);
app.use('/clients',api_clients);
app.use('/bill',api_bill);


module.exports = app;
