const config = require('../../config');
const conn = require('../db');

exports.DBfindAllProducts = function() {
    return conn.db.any('SELECT * FROM public.mdboatproducts order by name ASC');
};

exports.DBaddAProduct = function(code, name, description, cost, unit_price) {
    return conn.db.one('INSERT INTO public.mdboatproducts (code, name, description, cost, unit_price) VALUES ($1, $2, $3, $4, $5) RETURNING mdboatproducts_id', [code, name, description, cost, unit_price]);
};


exports.DBcheckNameProduct = function(name, excep) {
	// console.log('DBcheckNameProduct', name, excep)
    return conn.db.manyOrNone(	'SELECT name, code FROM public.mdboatproducts '+
    							' WHERE mdboatproducts.name = $1 and  mdboatproducts.name <> $2 limit 1',
    							[name.trim(), excep.trim()]);
};

exports.DBcheckCodeProduct = function(name, excep) {
	// console.log('DBcheckCodeProduct', name, excep)
    return conn.db.manyOrNone(	'SELECT name, code FROM public.mdboatproducts '+
    							' WHERE mdboatproducts.code = $1 and  mdboatproducts.code <> $2 limit 1 ',
    							[name.trim(), excep.trim()]);
};


exports.DBupdateBoatproducts = function(boatproducts_id, code, name, description, cost, unit_price) {
    return conn.db.none('UPDATE public.mdboatproducts SET code = $1, name = $2, description = $3, cost = $4 ,unit_price = $5 '+
                        'WHERE mdboatproducts_id = $6', [code, name, description, cost, unit_price,boatproducts_id]);
};


exports.DBdeleteBoatproducts = function(boatproducts_id) {
    return conn.db.none('DELETE FROM public.mdboatproducts WHERE mdboatproducts_id = $1',[boatproducts_id]);
};

exports.DBloadproduct = function(code) {
    return conn.db.any('SELECT * FROM public.mdboatproducts WHERE code = $1',[code]);
};

