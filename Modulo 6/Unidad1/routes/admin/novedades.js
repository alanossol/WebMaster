var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');

router.get('/', async function(req,res,next) {

    var novedades = await novedadesModel.getNovedades();

    res.render('admin/novedades', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        novedades
    });
});

router.get('/eliminar/:id', async (req,res,next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades');
})


module.exports = router;



    /*
    var tableGUI;
    var currentId = 1;
    var query = 'select * from novedades where id = ' + currentId;
    var rows = await pool.query(query, [id, titulo, ]);

    tableGUI += '<table class="table">';
    tableGUI += '<thead><tr><th scope="col">id</th><th scope="col">Titulo</th><th scope="col">Subtitulo</th><th scope="col">Cuerpo</th></tr></thead>';
    while(rows[currentId - 1] != undefined)
    {
        ++currentId;
        var query = 'select * from novedades where id = ' + currentId;
        var rows = await pool.query(query, [id, titulo, subtitulo, cuerpo]);

        tableGUI=

    }
    
    tableGUI += '</table>';
    */



/*,
        table: tableGUI*/