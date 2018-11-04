const DBlayer = require('../models/mdclients');


exports.loadclient = function(req,res) {

    DBlayer.DBloadClient(req.body.cd).then(function(data) {
        res.status(200).json({
            statusCode: 200,
            data: data
        });
    })
    .catch(function(err) {
        console.log(err);
        res.status(500).send(err);
    });
}


exports.findAllClients = function(req,res) {
   
    DBlayer.DBfindAllClients().then(function(data) {
            res.status(200).json({
                statusCode: 200,
                data: data
            });
        })
        .catch(function(err) {
            console.log(err);
            res.status(500).send(err);
        });


};


exports.addAClients = function(req,res) {
    console.log("Insertar");
    console.log(req.body);
    if (req.body.phone == '') {
        req.body.phone = null;
    }
    if (req.body.email == '') {
        req.body.email = null;
    }
    if (req.body.address == '') {
        req.body.address = null;
    }
    DBlayer.DBaddAClients(req.body.cd,req.body.name,req.body.address,
                         (req.body.phone),(req.body.email))
    .then(function(data) {
        res.status(200).json({
            statusCode: 200,
            data: data
        });
    })
    .catch(function(err) {
        console.log(err);
        res.status(500).send(err);
    });
};

exports.updateClients = function(req, res) {
    console.log("Actualizar");
    console.log(req.body);
    if (req.body.phone == '') {
        req.body.phone = null;
    }
    if (req.body.email == '') {
        req.body.email = null;
    }
    if (req.body.address == '') {
        req.body.address = null;
    }
      DBlayer.DBupdateClients(req.body.mdclient_id,req.body.cd,req.body.name,req.body.address,
                                   (req.body.phone),(req.body.email))
          .then(function(data) {
              res.status(200).json({
                  statusCode: 200,
                  data: data
              });
          })
          .catch(function(err) {
              console.log(err);
              res.status(500).send(err);
          });
};


exports.deleteClients = function(req, res) {
    DBlayer.DBdeleteClients(req.body.mdclient_id)
        .then(function(data) {
            res.status(200).json({
                statusCode: 200,
                mgs: "Clientso Eliminada"
            });
        })
        .catch(function(err) {
          console.log(err);
            res.status(500).send(err);
        });
};

exports.changeName = function(req, res) {
    let name = req.body.name;
    let excep = req.body.diff;
        DBlayer.DBcheckNameClients(name,excep)
        .then(function(data){
            // console.log('result: ', data)
            res.status(200).json({
                statusCode: 200,
                data: data
            });
        })
        .catch(function(err) {
            console.log(err);
            res.status(500).send(err);
        });
        
};

exports.changeCd = function(req, res) {
    let name = (req.body.name);
    let excep = req.body.diff;
        // console.log('in:: ',name, excep )
        DBlayer.DBcheckCdClients(name,excep)
        .then(function(data){
            res.status(200).json({
                statusCode: 200,
                data: data
            });
        })
        .catch(function(err) {
            console.log(err);
            res.status(500).send(err);
        });

};