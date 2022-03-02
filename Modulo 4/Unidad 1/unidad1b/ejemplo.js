var moment = require('moment');

moment.locale('es');

console.log('Naci ' + moment('27/02/1998','DD/MM/YYYY').fromNow() );