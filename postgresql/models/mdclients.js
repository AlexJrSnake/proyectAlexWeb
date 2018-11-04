const config = require('../../config');
const conn = require('../db');


exports.DBfindAllClients = function() {
    return conn.db.any('SELECT * FROM public.mdclient order by name ASC');
};

exports.DBaddAClients = function(cd, name, address, phone, email) {
    return conn.db.one('INSERT INTO public.mdclient (cd, name, address, phone, email) VALUES ($1, $2, $3, $4, $5) RETURNING mdclient_id', [cd, name, address, phone, email]);
};


exports.DBcheckNameClients = function(name, excep) {
    console.log('DBcheckNameProduct', name, excep)
    
    return conn.db.manyOrNone(	'SELECT name, cd FROM public.mdclient '+
    							' WHERE mdclient.name = $1 and  mdclient.name <> $2 limit 1',
    							[name.trim(), excep.trim()]);
};

exports.DBcheckCdClients = function(name, excep) {
	console.log('DBcheckcdProduct', name, excep)
    return conn.db.manyOrNone(	'SELECT name, cd FROM public.mdclient '+
    							' WHERE mdclient.cd = $1 and  mdclient.cd <> $2 limit 1 ',
    							[name.trim(), excep.trim()]);
};


exports.DBupdateClients = function(mdclient_id, cd, name, address, phone, email) {
    return conn.db.none('UPDATE public.mdclient SET cd = $1, name = $2, address = $3, phone = $4 ,email = $5 '+
                        'WHERE mdclient_id = $6', [cd, name, address, phone, email,mdclient_id]);
};


exports.DBdeleteClients = function(mdclient_id) {
    return conn.db.none('DELETE FROM public.mdclient WHERE mdclient_id = $1',[mdclient_id]);
};

exports.DBloadClient = function(cd) {
    return conn.db.any('SELECT * FROM public.mdclient WHERE cd = $1',[cd]);
};

