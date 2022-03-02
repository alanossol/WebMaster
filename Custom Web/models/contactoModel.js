var pool = require('./bd');


async function getContactos(){
    var query = 'select * from contacto';
    var rows = await pool.query(query);
    return rows;
}


async function buscarContacto(busqueda) {
    var query = "select * from contacto where nombre like ? OR email like ? OR tel like ? OR mensaje like ?";
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
}


async function deleteContactoById(id) {
    var query = 'delete from contacto where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

async function insertContacto(obj) {
    try {
        var query = 'insert into contacto set ? ';
        var rows = await pool.query(query, [obj]);
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

module.exports = { insertContacto, getContactos, deleteContactoById, buscarContacto }