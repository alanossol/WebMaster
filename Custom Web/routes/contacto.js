var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var contactoModel = require('../models/contactoModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacto', {
    isContacto: true
    });
});

/* Funcionamiento de formulario */

router.post('/', async (req, res, next) => {
  try{
    if(req.body.nombre != "" && req.body.email != "" && req.body.tel != "" && req.body.mensaje != ""){
      var nombre = req.body.nombre;
      var email = req.body.email;
      var telefono = req.body.tel;
      var mensaje = req.body.mensaje;
      //console.log(req.body);
    
      var obj = {
          to: 'alorusso1337@gmail.com',
          subject: 'Contacto desde la Web',
          html: nombre + " se contacto a traves y quiere mas info a este correo:" + email + ". <br> Ademas, hizo el siguiente comentario: " + mensaje + ". <br> Su tel es " + telefono
    
      }//cierra var obj
      
      var transporter = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth: {
          user: process.env.SMTP_USER,
          pass: process.env.SMTP_PASS
        }
      }); //cierra transport
      
      var contacto = await contactoModel.insertContacto(req.body);
      var info = await transporter.sendMail(obj);
      res.render('contacto', {
        isContacto: true,
        message: 'Mensaje enviado correctamente'
      });
    } else {
      res.render('contacto', {
        isContacto: true,
        message: 'Todos los campos son  requeridos'
      });
    }
} catch (error) {
    console.log(error)
    res.render('contacto', {
      isContacto: true,
      message: 'No se cargo el contacto'
    });
}

  
});


module.exports = router;