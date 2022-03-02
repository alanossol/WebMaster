var express = require('express');
var router = express.Router();
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  try{
    var novedades = await novedadesModel.getNovedades();

  res.render('novedades', {
    isNovedades: true,
    novedades
    });
  }catch (error){
    res.render('novedades', {
      isNovedades: true,
      novedades
      });
  }
  
});

module.exports = router;