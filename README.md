# practica04-HLC

Autores: Rafael Martín Serrano.
         Fátima Pérez Martín
         
         Desarrolla una aplicación Web con los siguientes requisitos:
         
1.- Una página inicial de bienvenida en HTML5 o JSP.
1.1.- Mostrará el título del trabajo y una descripción del contenido
1.2.- Aparecerá los nombres, apellidos y las fechas de nacimiento (puede ser inventada) de los
autores.
1.3.- Tendrá un enlace a una página donde se mostrará las edades y los signos del zodiaco,
ambos calculados mediante JavaBeans.
1.4.- Habrá enlaces a las páginas listarArticulos y listarTabla, donde aparecerán un listado
comidas. Con los atributos: nombre, país, fecha de invención, calorías cada 100 gramos e
imagen o foto.
1.5.- En un HashMap se guardarán los elementos geográficos. El formato del hashMap será
“nombre (String), comida (objeto / clase)”. Los tipos atributos del la clase serán: String, String
para la foto o imagen, entero y fecha. Habrá 10 elementos (comidas) pre-cargados de 3 paises.
2.- Página listarArticulos (en JSP) con estructuras semántica (article / section).
2.1.- Se mostrarán el nombre y la imagen de las comidas. Cada uno debe ir en un “article” y
otras etiquetas, similar a las prácticas anteriores.
2.2.- En cada “article” o en la imagen habrá un enlace (ver más, detalles, ...) para ir a la página
detalle de cada comida.
2.3.- Habra una “section” por cada país. Puede intercambiarse “article” y “section”
3.- Página listarTabla (en JSP) en una tabla.
3.1.- En cada fila se visualizarán todos los datos de todos los elementos almacenados, excepto
la imagen (<tr><td>).
3.2.- Habrá un encabezado con los nombres de las columnas (<tr><th>).
3.3.- Sobre la tabla se aplicarán los efectos CSS: responsive (<div style="overflow-x: auto;">),
diferencia visual entre las filas pares e impares (“tr:nth-child(even)”) y cambio de color al pasar el
ratón (“tr:hover”).
https://www.w3schools.com/css/css_table_responsive.asp  
https://www.w3schools.com/css/css_table.asp

4.- En la página detalle (en JSP) en una tabla HTML se mostrarán todos los datos del elemento
seleccionado junto con la imagen (estará almacenada en una carpeta)
5.- Deben usarse HTML5, JSP y CSS3.
6.- La web debe estar valida (http://validator.w3.org).
7.- Se recomienda el IDE Netbeans 8.2.
8.- Se utilizará repositorios Git. Debe hacerse un proyecto colaborativo y tener hecho “Pull Request”.
Uno crea el repositorio y el otro clone, checkout -b “rama”, ..., commit, push. ...
Ayuda:
Se adjunta el proyecto de ejemplo: Web_JSP.zip y PruebaHashMap.zip
