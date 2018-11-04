const express = require('express');
const config = require('../config');

const appBillCtrl = config.driver === 'postgres' ? require('../postgresql/controllers/mdbill') : require('./hcp/controllers/mdbill');

const api_bill = express.Router();

api_bill.get('/', appBillCtrl.findAllBills);
api_bill.post('/addbill', appBillCtrl.addbill);
api_bill.post('/billinfo', appBillCtrl.billinfo);
api_bill.post('/billdisable', appBillCtrl.billdisable);
api_bill.get('/lastCode', appBillCtrl.lastCode);

module.exports = api_bill;

