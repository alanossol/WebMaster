var express = require('express');
var router = express.Router();
var productosModel = require('../models/productosModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  try{
    var listMouse = await productosModel.getProductos();

  var selectedMouse = listMouse[0];

  res.render('index', {
    isHome: true,
    listMouse,
    selectedMouse
    });
  } catch (error){
    res.render('index', {
      isHome: true,
      listMouse,
      selectedMouse
      });
  }
  
});

router.get('/:id', async function(req, res, next) {
  try{
    var id = req.params.id;
  console.log(req.params.id);
  var listMouse = await productosModel.getProductos();

  var selectedMouse = await productosModel.getProductoById(id);

  res.render('index', {
    isHome: true,
    listMouse,
    selectedMouse
    });
  } catch(error) {
    res.render('index', {
      isHome: true,
      listMouse,
      selectedMouse
      });
  }
  
});



module.exports = router;
