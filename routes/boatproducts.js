const express = require('express');
const config = require('../config');

const mdboatproductsControlCtrl = config.driver === 'postgres' ? require('../postgresql/controllers/mdboatproducts') : require('./hcp/controllers/mdboatproducts');

const api_mdboatproducts = express.Router();

api_mdboatproducts.get('/', mdboatproductsControlCtrl.findAllProducts);
api_mdboatproducts.post('/', mdboatproductsControlCtrl.addAProduct);
api_mdboatproducts.post('/changeName', mdboatproductsControlCtrl.changeName);
api_mdboatproducts.post('/changeCode', mdboatproductsControlCtrl.changeCode);
api_mdboatproducts.put('/', mdboatproductsControlCtrl.updateBoatproducts);
api_mdboatproducts.delete('/', mdboatproductsControlCtrl.deleteBoatproducts);
api_mdboatproducts.post('/loadproduct', mdboatproductsControlCtrl.loadproduct);

module.exports = api_mdboatproducts;