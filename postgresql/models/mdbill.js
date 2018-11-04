const config = require('../../config');
const conn = require('../db');


exports.DBfindAllBills = function() {
  return conn.db.any('SELECT Distinct a.code, b.name FROM public.mdbill a, public.mdclient b WHERE a.mdclient_id = b.mdclient_id order by code ASC');
};

exports.DBaddbill =  function(bill) {
  
    cs = conn.pgp.helpers.ColumnSet(['mdclient_id', 'mdboatproducts_id', 'quantity'
    ,'bill_date','payment_method','code','status'], {table: 'mdbill', schema: 'public'});
   
    return conn.db.none(conn.pgp.helpers.insert(bill, cs));
};

exports.DBbilldisable = function(bill) {
  cs = conn.pgp.helpers.ColumnSet(['quantity','code','status'], {table: 'mdbill', schema: 'public'});
 
  return conn.db.none(conn.pgp.helpers.update(bill, cs ) + ' WHERE v.code = t.code');
}

exports.DBlastCode = function() {
    return conn.db.any('Select Max(code) from public.mdbill');
};

exports.DBbillinfo = function(code) {
  return conn.db.any('SELECT a.code,b.name,c.code as codeProduct,c.name,c.description,c.unit_price,a.quantity,a.status FROM public.mdbill a, public.mdclient b,public.mdboatproducts c WHERE a.mdclient_id = b.mdclient_id AND a.mdboatproducts_id = c.mdboatproducts_id AND a.code = $1',[code]);
};

