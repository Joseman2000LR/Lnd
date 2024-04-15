nth-child: En el código CSS, li:nth-child(even) seleccionará todos los elementos <li> que sean hijos pares de su contenedor, sin importar si son del mismo tipo que sus hermanos. En este caso, todos los elementos pares de la lista (Uno, Tres, Cinco, Siete, Nueve) recibirán un color azul.

nth-of-type: Por otro lado, li:nth-of-type(even) seleccionará los elementos <li> que sean del mismo tipo que sus hermanos pares dentro de su contenedor. En esta lista, también seleccionará los mismos elementos que nth-child, pero si hubiera otros elementos del mismo tipo en el contenedor, solo se aplicaría a los <li> pares. En este caso, los elementos pares (Uno, Tres, Cinco, Siete, Nueve) recibirán un color rojo.

Entonces, aunque en este ejemplo específico los resultados son iguales, la diferencia se vuelve más evidente cuando hay otros tipos de elementos en el mismo contenedor que deben tenerse en cuenta.
