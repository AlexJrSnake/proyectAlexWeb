const DBlayer = require('../models/mdboatproducts');

exports.loadproduct = function(req,res) {
   
    DBlayer.DBloadproduct(req.body.code)
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


exports.findAllProducts = function(req,res) {
   
    DBlayer.DBfindAllProducts()
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


exports.addAProduct = function(req,res) {
    console.log("Insertar");
    console.log(req.body);
    if (req.body.unit_price == '') {
        req.body.unit_price = null;
    }
    DBlayer.DBaddAProduct(req.body.code,req.body.name,req.body.description,
                         parseInt(req.body.cost),(req.body.unit_price))
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

exports.updateBoatproducts = function(req, res) {
    console.log("Actualizar");
    console.log(req.body);
    if (req.body.unit_price == '') {
        req.body.unit_price = null;
    }
      DBlayer.DBupdateBoatproducts(req.body.boatproducts_id,req.body.code,req.body.name,req.body.description,
                                   parseInt(req.body.cost),(req.body.unit_price))
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


exports.deleteBoatproducts = function(req, res) {
    DBlayer.DBdeleteBoatproducts(req.body.boatproducts_id)
        .then(function(data) {
            res.status(200).json({
                statusCode: 200,
                mgs: "Producto Eliminada"
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
        DBlayer.DBcheckNameProduct(name,excep)
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

exports.changeCode = function(req, res) {
    let name = (req.body.name);
    let excep = req.body.diff;
        // console.log('in:: ',name, excep )
        DBlayer.DBcheckCodeProduct(name,excep)
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