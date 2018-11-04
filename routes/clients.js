const express = require('express');
const config = require('../config');

const mdClientsControlCtrl = config.driver === 'postgres' ? require('../postgresql/controllers/mdclients') : require('./hcp/controllers/mdclients');

const api_mdclients = express.Router();

api_mdclients.get('/', mdClientsControlCtrl.findAllClients);
api_mdclients.post('/', mdClientsControlCtrl.addAClients);
api_mdclients.post('/changeName', mdClientsControlCtrl.changeName);
api_mdclients.post('/changeCd', mdClientsControlCtrl.changeCd);
api_mdclients.put('/', mdClientsControlCtrl.updateClients);
api_mdclients.delete('/', mdClientsControlCtrl.deleteClients);

api_mdclients.post('/loadclient', mdClientsControlCtrl.loadclient);

module.exports = api_mdclients;