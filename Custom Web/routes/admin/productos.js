var express = require('express');
var router = express.Router();
var productosModel = require('../../models/productosModel');

router.get('/', async function(req,res,next) {
    try{
        var productos;
    if (req.query.prodq === undefined) {
        productos = await productosModel.getProductos();
    } else {
        productos = await productosModel.buscarProductos(req.query.prodq);
    }

    res.render('admin/productos', {
        layout: 'admin/layout',
        notLogin: true,
        isAdminProductos: true,
        usuario: req.session.nombre,
        productos,
        is_prodSearch: req.query.prodq !== undefined,
        prodq: req.query.prodq
    });
    }catch (error){
        res.render('admin/productos', {
            layout: 'admin/layout',
            notLogin: true,
            isAdminProductos: true,
            usuario: req.session.nombre,
            productos,
            is_prodSearch: req.query.prodq !== undefined,
            prodq: req.query.prodq
        });
    }
    
});

router.get('/eliminar/:id', async (req,res,next) => {
    try{
        var id = req.params.id;
    await productosModel.deleteProductoById(id);
    res.redirect('/admin/productos');
    }catch(error){
        res.redirect('/admin/productos');
    }
    
});


router.get('/agregar', (req, res, next) => {
    try{
        res.render('admin/productosAgregar', {
            layout: 'admin/layout',
        });
    }catch(error){
        res.redirect('/admin/productos');
    }
    
});


router.post('/agregar', async(req,res,next) => {
    try{
        if(req.body.nombre != "" && req.body.url != "" && req.body.especificaciones != "" && req.body.descripcion != "") {
            await productosModel.insertProducto(req.body);
            res.redirect('/admin/productos');
        } else {
            res.render('admin/productosAgregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            });
        }
    } catch (error) {
        console.log(error)
        res.render('admin/productosAgregar', {
            layout: 'admin/layout',
            error: true, message: 'No se cargo el producto'
        });
    }
});

router.get('/modificar/:id', async (req,res,next) => {
    try{
        var id = req.params.id;
    console.log(req.params.id);
    var productos = await productosModel.getProductoById(id);

    res.render('admin/productosModificar', {
        layout: 'admin/layout',
        productos
    });
    }catch (error) {
        res.redirect('/admin/productos');
    }
    
});

router.post('/modificar/', async (req,res,next) => {
    try {
        var obj = {
            nombre: req.body.nombre,
            url: req.body.url,
            especificaciones: req.body.especificaciones,
            descripcion: req.body.descripcion
        }
        console.log(obj);
        if(req.body.nombre != "" && req.body.url != "" && req.body.especificaciones != "" && req.body.descripcion != "") {
            await productosModel.modificarProductoById(obj, req.body.id);
            res.redirect('/admin/productos');
        } else {
            res.render('admin/productosAgregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            });
        }
    } catch (error) {
        console.log(error);
        res.render('admin/productosModificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico el producto'
        });
    }
});

module.exports = router;
