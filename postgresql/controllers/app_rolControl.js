const DBlayer = require('../models/app_rolControl');
const utils = require('../../lib/utils');

exports.otbenerAppXrol = function (req, res) {
    DBlayer.DBfindAppRol(req.body.user_infor.rol_id)
        .then(function (data) {
            res.status(200).json({
                statusCode: 200,
                data: data
            });
        
        });
}

exports.otbenerAppXrolEnEspecial = function (req, res) {
    DBlayer.DBfindAppRolEspecial(req.body.user_infor.rol_id, req.body.applicacion_name)
        .then(function (data) {
            res.status(200).send(data);
        });
}

exports.AddRolXApps = function (req, res) {

    DBlayer.DBInsertNameRol(req.body.name, req.body.userAdmin).then(function (data) {
        let appid = req.body.selectedItems;
        for (let index = 0; index < appid.length; index++) {
            DBlayer.DBAppsXRol(appid[index], data.rol_id)
        }
        res.status(200).send(data);
    }).catch(function (err) {
        res.status(500).send(err);
    });
}

exports.GetName = function (req, res) {
    DBlayer.DBGetName(req.body.name).then(function (data) {
        res.status(200).send(data);
    }).catch(function (err) {
        res.status(500).send(err);
    });
}


exports.findRolId = function (req, res) {
    DBlayer.DBfindRolid(req.body.name).then(function (data) {
        res.status(200).send(data);
    }).catch(function (err) {
        res.status(500).send(err);
    });
}

exports.otbenerApps = function (req, res) {
    DBlayer.DBotbenerApps(req.body.rol_id).then(function (data) {
        res.status(200).json({
            statusCode: 200,
            data: data
        });
    });
}

exports.updateRolName = function (req, res) {
    DBlayer.DBUpdateRolName(req.body.rol_id, req.body.rolname).then(function (data) {
        res.status(200).send(data);
    }).catch(function (err) {
        res.status(500).send(err);
    });
}

exports.updateAppsXRol = function (req, res) {
    DBlayer.DBdeleteAppsXrol(req.body.rol_id).then(function (data) {
        let appid = req.body.NewSelectedItems;
        for (let index = 0; index < appid.length; index++) {
            DBlayer.DBAppsXRol(appid[index], req.body.rol_id)
        }
        res.status(200).send(data);
    }).catch(function (err) {
        res.status(500).send(err);
    });

}