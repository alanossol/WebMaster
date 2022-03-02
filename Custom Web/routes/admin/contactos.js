var express = require('express');
var router = express.Router();
var contactoModel = require('../../models/contactoModel');

router.get('/', async function(req,res,next) {
    try{
        var contactos;
    if (req.query.contq === undefined) {
        contactos = await contactoModel.getContactos();
    } else {
        contactos = await contactoModel.buscarContactos(req.query.q);
    }

    res.render('admin/contactos', {
        layout: 'admin/layout',
        notLogin: true,
        isAdminContactos: true,
        usuario: req.session.nombre,
        contactos,
        is_search: req.query.contq !== undefined,
        q: req.query.contq
    });
    }catch (error)
    {
        res.render('admin/contactos', {
            layout: 'admin/layout',
            notLogin: true,
        });
    }
    
});

router.get('/eliminar/:id', async (req,res,next) => {
    try{
        var id = req.params.id;
        await contactoModel.deleteContactoById(id);
        res.redirect('/admin/contactos');
    } catch (error)
    {
        res.redirect('/admin/contactos');
    }
    
})

module.exports = router;
