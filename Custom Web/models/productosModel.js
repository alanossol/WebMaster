var pool = require('./bd');

async function getProductos(){
    
    try {
        var query = 'select * from productos ORDER BY id DESC';
    var rows = await pool.query(query);
    return rows;
    } catch(error) {
        console.log(error);
        throw error;
    }
}

async function deleteProductoById(id) {
    
    try {
        var query = 'delete from productos where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
    } catch(error) {
        console.log(error);
        throw error;
    }
}

async function getProductoById(id) {
    try {
        var query = 'select * from productos where id = ?';
    var rows = await pool.query(query, [id]);
    return rows[0];
    } catch(error) {
        console.log(error);
        throw error;
    }
    
}

async function modificarProductoById(obj, id) {
    try{
        var query = 'update productos set ? where id=?';
        var rows = await pool.query(query,[obj,id]);
        return rows;
    } catch (error) {
        throw error;
    }
}

async function insertProducto(obj) {
    try {
        var query = "insert into productos set ?";
        var rows = await pool.query(query, [obj])
        return rows;
    } catch(error) {
        console.log(error);
        throw error;
    }
}

async function buscarProductos(busqueda) {
    try {
        var query = "select * from productos where nombre like ? OR especificaciones like ? OR descripcion like ? ORDER BY id DESC";
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
    } catch(error) {
        console.log(error);
        throw error;
    }
    
}

module.exports = { getProductos, insertProducto, deleteProductoById, getProductoById, modificarProductoById, buscarProductos }