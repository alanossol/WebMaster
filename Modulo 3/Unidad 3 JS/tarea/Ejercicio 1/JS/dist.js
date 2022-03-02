var x = prompt('Ingrese Metros a recorrer', '');
    if (x=>0) {
        if(x > 1000)
        {
            if(x > 10000)
            {
                if(x > 30000)
                {
                    if (x > 100000) 
                    {
                        document.write('Avion');
                    }
                    else{
                        document.write('Auto');
                    }
                }
                else{
                    document.write('Colectivo');
                }
            }
            else{
                document.write('Bicicleta');
            }

        }
        else{
            document.write('Pie');
        }
    }
    else{
        document.write('No esta permitido el ingreso de ausencia de distancias.');
    }