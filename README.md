# CIU-3-PlanetSystem

### Autor: Víctor Herrera Delgado
Estudiante de Ingeniería Informática en la Universidad de Las Palmas de Gran Canaria, en último curso de su grado.



## Introducción 

Este programa consiste en una representación de un sistema planetario, en este caso, uno basado en el sistema solar pero con libertad del autor para cambiar nombres, astros, texturas y demás características de estos.

El sistema cuenta con una estrella principal (sun) que se muestra en el centro de la pantalla, rodeada por cinco planetas que giran alrededor suyo (Earth, Prometheus, Watzan, Dust II y Chained planet). Estos planetas presentan distintos tamaños además de que se mueven y rotan sobre si mismos a distintas velocidades (incluso en distintas direcciones en algunos casos). 
Dos de los planetas (Earth y Chained planet) presentan también astros girando alrededor de cada uno también con distintas velocidades.

Se muestra el nombre de cada uno de los planetas siempre al usuario, aunque en el caso de los astros, debido a su movimiento sus nombres solo podrán ser vistos en algunos casos.
Cabe destacar por último que se le ha aplicado una textura a cada cuerpo que forma el sistema planetario.



## Resumen del código
El código consiste en dos archivos:

- El archivo *Practica3*, que es el principal y por lo tanto encargado de crear, cargar e inicializar los componentes necesarios para el funcionamiento del programa (crear planetas, cargar imágenes, etc) así como de mandar a dibujar el sistema planetario en pantalla.
- El archivo *Planet*, que es la representación de un cuerpo en el sistema solar (planeta,astro o estrella). Este no solo inicializará sus características y se podrá dibujar a sí mismo a partir de estas, sino que además guardará una lista con los cuerpos que giran alrededor suya para que se dibujen cuando lo manden a dibujarse a si mismo.

Por lo tanto, al dibujarse solo se llama al método de dibujo de la estrella y los demás cuerpos se dibujarán deribando de este.

## Funcionamiento
![](Practica3.gif)

## Herramientas

Conversor de video a gif:

https://hnet.com/video-to-gif/

Grabación del programa:

https://obsproject.com/

Páginas de las que se han obtenido las texturas:

https://www.pinterest.es/pin/423971752420031073/   
https://www.flickr.com/photos/42084302@N05/3884071286   
https://giovannaimperia.com/textures/chains.html     
https://svs.gsfc.nasa.gov/4720  
http://www.textures4photoshop.com/tex/clouds-and-sky/sun-texture-seamless.aspx
http://www.textures4photoshop.com/tex/fire-and-smoke/smoke-texture-free-download.aspx
http://www.textures4photoshop.com/tex/paper/grunge-stained-old-paper-texture.aspx
https://freestocktextures.com/photos-universe/

