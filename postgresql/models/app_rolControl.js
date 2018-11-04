const config = require('../../config');
const conn = require('../db');

exports.DBfindAppRol = function(username) {
    return conn.db.any('SELECT *' +
    ' FROM public.mdapplication_rol a,public.mdapplication b' + 
    ' WHERE rol_id = $1 and a.application_id = b.application_id',[username]);
};


exports.DBfindAppRolEspecial = function(username,appName) {
    return conn.db.any('SELECT a.application_id,b.application_name' +
    ' FROM public.mdapplication_rol a,public.mdapplication b' + 
    ' WHERE rol_id = $1 and a.application_id = b.application_id ' +
    ' and b.application_name = $2',[username,appName]);
};

exports.DBfindRol = function(rolname) {
    return conn.db.any('SELECT a.rol_id' +
    ' FROM public.mdrol a' + 
    ' WHERE rol_name = $1',[rolname]);
};

exports.DBInsertNameRol = function(namerol,adminUser) {
    return conn.db.one('INSERT INTO public.mdrol (rol_name,admin_user_creator,creation_date) VALUES ($1, $2,CURRENT_TIMESTAMP) RETURNING rol_id', [namerol, adminUser]);
}

exports.DBAppsXRol = function(Appsid,rol_id) {
    return  conn.db.none('INSERT INTO public.mdapplication_rol (application_id,rol_id) VALUES ($1, $2)', [Appsid, rol_id]);    
    // cs = conn.pgp.helpers.ColumnSet(['application_id','rol_id'], {table: 'mdapplication_rol', schema: 'public'});
    // return conn.db.none(conn.pgp.helpers.insert(selectedItems, cs));
}

exports.DBGetName = function(name) {
    return conn.db.any('SELECT a.rol_name' +
    ' FROM public.mdrol a' + 
    ' WHERE rol_name = $1',[name]);
}

exports.DBfindRolid = function(rolname) {
    return conn.db.any('SELECT a.rol_name' +
    ' FROM public.mdrol a ' + 
    ' WHERE rol_id = $1',[rolname]);
};

exports.DBotbenerApps = function(rol_id) {

    return conn.db.any('SELECT a.id,a.application_id,b.application_name' +
    ' FROM public.mdapplication_rol a, public.mdapplication b' + 
    ' WHERE a.rol_id = $1 and a.application_id = b.application_id ',[rol_id]);
}

exports.DBUpdateRolName = function(rol_id,rolname) {
    return conn.db.none('UPDATE public.mdrol SET rol_name=$1'+
    'WHERE rol_id = $2' , [rolname, rol_id]);
}

exports.DBdeleteAppsXrol = function(rol_id) {
    return conn.db.none('DELETE FROM public.mdapplication_rol '+
    'WHERE rol_id = $1' , [ rol_id]);
}