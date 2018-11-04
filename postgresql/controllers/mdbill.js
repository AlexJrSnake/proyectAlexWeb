const DBlayer = require('../models/mdbill');
const utils = require('../../lib/utils');

exports.findAllBills = function(req,res) {
  DBlayer.DBfindAllBills()
      .then(function(data) {
          res.status(200).json({
              statusCode: 200,
              data: data
          });
      })
      .catch(function(err) {
          res.status(500).send(err);
      });
};


exports.billdisable = function(req,res) {
  let bill = req.body.bill;
  utils.cleanObjects(bill);
  console.log(bill);
  DBlayer.DBbilldisable(bill)
      .then(function(data) {
          res.status(200).json({
              statusCode: 200,
              data: data
          });
      })
      .catch(function(err) {
        console.log(err)
        res.status(500).send(err);
      });
};


exports.billinfo = async function (req, res) {
  DBlayer.DBbillinfo(req.body.code).then(function (data) {
    res.status(200).json({
      statusCode: 200,
      data: data
    });
  }).catch(function (err) {
    console.log(err);
    res.status(500).send(err);
  });
};


exports.addbill = async function (req, res) {
    let bill = req.body.bill;
      utils.cleanObjects(bill);
      console.log(bill);
      DBlayer.DBaddbill(bill).then(function (data) {
        res.status(200).json({
          statusCode: 200,
          data: data
        });
      }).catch(function (err) {
        console.log(err);
        res.status(500).send(err);
      });
};

exports.lastCode = async function (req, res) {
    DBlayer.DBlastCode().then(function (data) {
      res.status(200).json({
        statusCode: 200,
        data: data
      });
    }).catch(function (err) {
      console.log(err);
      res.status(500).send(err);
    });
};


