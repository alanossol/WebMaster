var numero = document.getElementById('count');
        var text = document.getElementsById('mensaje');
        var cantidad;
        function updateCounter(){
            cantidad = text.value.lengh
            numero.innerText = cantidad;
        }

        updateCounter();
        text.addEventListener('keyup', updateCounter() );