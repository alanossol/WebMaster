function highestArray(x = [])
{
    var highest = x[0];
    var length = x.length-1;
    console.log(x.length);
    for(var i = 1; i < length; i++)
    {
        if(highest < x[i])
        {
            highest = x[i];
        }
    }

    return highest;
}


var list = [];
var get = 0;
var i = 0;
var get = prompt('Ingrese valor a agregar a la lista: (\'-1\' para terminar)', '');
while(get != '-1')
{
    list[i] = parseInt(get);
    i++;
    get = prompt('Ingrese nuevo valor a agregar a la lista: (\'-1\' para terminar)', '');
}
console.log(list.length);
document.write('El mayor valor ingresado fue: ', highestArray(list));