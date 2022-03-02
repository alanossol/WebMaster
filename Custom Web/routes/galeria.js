var express = require('express');
var router = express.Router();
var productosModel = require('../models/productosModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  try
  {
    var productos = await productosModel.getProductos();

  res.render('galeria', {
    isGaleria: true,
    productos
    });
  }catch (error)
  {
    res.render('galeria', {
      isGaleria: true,
      productos
      });
  }
  
});

module.exports = router;