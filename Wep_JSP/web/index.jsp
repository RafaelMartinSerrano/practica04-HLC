<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HLC-PO5</title>
        
        <style>
            body {
                font-family: Arial, sans-serif; /* Establece la fuente del texto */
                background-color: #FFF8DC; /* Establece el color de fondo de la página */
                margin: 50px; /* Elimina el margen predeterminado del body */
                padding: 0; /* Elimina el relleno predeterminado del body */
            }
             header {
			background-color: #F5DEB3;
			text-align: center;
			font-size: 30px;
                        padding: 50px;
			color: black;		}
		
		footer {
			background-color: #F5DEB3;
			padding: 10px;
			text-align: center;
			color: black;
		}

            h1 {
                font-size: 36px; /* Establece el tamaño de fuente del encabezado */
                text-align: center; /* Centra el encabezado */
            }
            
            h2 {
                text-align: center; /* Centra el encabezado */
                letter-spacing: 2px;
                font-weight: 700;
                font-family: 'Montserrat', sans-serif;
                color: #333;
                margin-bottom: 10px;
            }
            
            h4{
                font-size: 18px; /* Establece el tamaño de fuente del texto */
                line-height: 1.5; /* Establece la altura de línea del texto */
            }

            p {
                font-size: 18px; /* Establece el tamaño de fuente del texto */
                line-height: 1.5; /* Establece la altura de línea del texto */
                padding: 10px; /* Agrega un relleno alrededor del texto */
            }

            img {
                text-align: center;
                display: block; /* Establece la imagen como un bloque, para que no haya elementos en línea a su lado */
                margin: 0 auto; /* Centra la imagen horizontalmente dentro de su contenedor */
                max-width: 100%; /* Establece la anchura máxima de la imagen al ancho del contenedor */
                height: auto; /* Establece la altura de la imagen en función de su anchura, para mantener la proporción */
            }
            
            li{
                margin-bottom: 30px;
            }
            
            ul{
                margin-bottom: 50px;
            }
            

        </style>
        
    </head>
    <body>
         <header>
		Practica 4 HLC
	</header>
    <h4>El trabajo consiste en tres partes:</h4>
    <ul><li>Zodiaco. Calculará la edad y el zodiaco de los participantes del trabajo</li>
        <li>Lista de articulos. Lista una serie de comidas tradicionales</li>
        <li>Tabla. Tendra la misma lista, y ademas enlaces a mas informacion sobre las comidas </li>
    </ul>
  
    <h4>Contenido de la web:</h4>
    <ul>
        <li>Ver edad y Signo: Pulsa <a href="jspCalendar.jsp">aquí</a></li>
        <li>Tabla de las comidas: Pulsa <a href ="listarArticulos.jsp"> aqui</a></li>
        <li>Articulos en secciones: Pulsa <a href="listarCSS1.jsp">aquí</a></li>
    </ul>    
    
    <h4>Autores:</h4>
    <p>Fátima Pérez Martín 10/10/2001</p>
    <p>Rafael Martín Serrano 22/08/1994</p>
       <footer>
		&copy; Derechos reservados
	</footer>   
    </body>
</html>
