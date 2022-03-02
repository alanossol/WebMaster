var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');

router.get('/', async function(req,res,next) {
    var novedades;
    if (req.query.q === undefined) {
        novedades = await novedadesModel.getNovedades();
    } else {
        novedades = await novedadesModel.buscarNovedades(req.query.q);
    }

    res.render('admin/novedades', {
        layout: 'admin/layout',
        notLogin: true,
        isAdminNovedades: true,
        usuario: req.session.nombre,
        novedades,
        is_search: req.query.q !== undefined,
        q: req.query.q
    });
});

router.get('/eliminar/:id', async (req,res,next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadById(id);
    res.redirect('/admin/novedades');
});


router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout',
    });
});


router.post('/agregar', async(req,res,next) => {
    try{
        if(req.body.titulo != "" && req.body.cuerpo != ""){
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/novedades');
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son  requeridos'
            });
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true, message: 'No se cargo la novedad'
        });
    }
});

router.get('/modificar/:id', async (req,res,next) => {
    var id = req.params.id;
    console.log(req.params.id);
    var novedades = await novedadesModel.getNovedadById(id);

    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedades
    });
});

router.post('/modificar/', async (req,res,next) => {
    try {
        var obj = {
            titulo: req.body.titulo,
            cuerpo: req.body.cuerpo
        }
        console.log(obj);
        if(req.body.titulo != "" && req.body.cuerpo != ""){
            await novedadesModel.modificarNovedadById(obj, req.body.id);
            res.redirect('/admin/novedades');
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son  requeridos'
            });
        }
        
    } catch (error) {
        console.log(error);
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico la novedad'
        });
    }
});

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