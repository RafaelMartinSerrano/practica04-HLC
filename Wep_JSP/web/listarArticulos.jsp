<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.*"%>
<%@page import="java.util.HashMap"%>
<%@page import="fecha.listaComida"%>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <jsp:useBean id="fecha" class="fecha.listaComida" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Listar tablas con hashmap</title>
        <style>
  
           
            body {
                font-family: Arial, sans-serif; /* Establece la fuente del texto */
                background-color: #FFF8DC; /* Establece el color de fondo de la página */
                margin: 50px; /* Elimina el margen predeterminado del body */
                padding: 0; /* Elimina el relleno predeterminado del body */
            }

            h1 {
                font-size: 36px; /* Establece el tamaño de fuente del encabezado */
                text-align: center; /* Centra el encabezado */
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
            table {
                border-collapse: collapse; /* Combina los bordes de celdas adyacentes */
                width: 100%; /* Establece el ancho de la tabla al 100% */
                max-width: 800px; /* Establece el ancho máximo de la tabla */
                margin: 0 auto; /* Centra la tabla en la página */
                margin-bottom: 20px; /* Agrega un espacio en blanco debajo de la tabla */
                background-color: #fff; /* Establece el color de fondo de la tabla */
            }

            th, td {
                text-align: left; /* Alinea el texto a la izquierda */
                padding: 12px; /* Agrega un relleno interno de 12 píxeles */
                border-bottom: 1px solid #ddd; /* Agrega una línea de borde inferior de 1 píxel */
            }

            th {
                background-color: #0000FF; /* Establece el color de fondo del encabezado de la tabla */
                color: #fff; /* Establece el color del texto del encabezado de la tabla */
            }

            tr:nth-child(even) {
                background-color: #4CAF50; /* Establece el color de fondo de las filas pares */
            }
            
            tr{
                 background-color: #4CAF00;
                 opacity: 80%;
            }

            tr:hover {
                background-color: #FF0000; /* Establece el color de fondo de las filas al pasar el ratón */
            }
    
            
        </style>
    </head>

    <body> 
            <%
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            %>
      
            <% Map<Integer, fecha.listaComida> countries = new Hashtable<Integer, fecha.listaComida>();
                
                countries.put(1, new listaComida("Paella", "spain.png", 169, new GregorianCalendar(1975,3,25)));
                countries.put(2, new listaComida("kartoffelsalat", "germany.png", 614, new GregorianCalendar(1975,2,28)));
                countries.put(3, new listaComida("stroganoff", "france.png", 778, new GregorianCalendar(1975,7,28)));
                countries.put(4, new listaComida("prosciutto di Parma", "norway.png", 33, new GregorianCalendar(1975,3,28)));
                countries.put(5, new listaComida("Fish and Chips", "italy.png", 397, new GregorianCalendar(1975,3,28)));
                countries.put(6, new listaComida("Irish Stew", "ireland.png", 12, new GregorianCalendar(1976,3,28)));
                countries.put(7, new listaComida("Finnbiff ", "france.png", 778, new GregorianCalendar(1975,3,30)));
                countries.put(8, new listaComida("Tacos", "norway.png", 33, new GregorianCalendar(1975,5,28)));
                countries.put(9, new listaComida("Escudella", "italy.png", 397, new GregorianCalendar(1976,3,28)));
                countries.put(10, new listaComida("Salteñas ", "ireland.png", 12, new GregorianCalendar(1975,3,28)));
                pageContext.setAttribute("sharePrice", countries);
            %>
    
     <header>
		Practica 4 HLC
	</header>    
        <%-- JSTL foreach tag example to loop Hashtable in JSP --%>
    </br></br>

    <div class="responsive-table">
        <table>
            <tr>
                <th>ID</th>
                <th>Comida</th>
                <th>Calorias</th>
                <th>Fecha</th>
   
            </tr>
  
        <c:forEach var="entry" items="${pageScope.sharePrice}">
            
             <tr>
                 <td><c:out value="${entry.key}"/></td>
                 <td><c:out value="${entry.value.nombre}"/></td>
                 <td><c:out value="${entry.value.calorias}"/> </td>
                 <td><c:out value="${entry.value.fecha}" /> </td>
            </tr>
        </c:forEach>
            
        </table>
        
       
    </div>
         <p>Pulsa <a href="index.jsp">aquí</a> para volver al index.</p> 
          <footer>
		&copy; Derechos reservados
	</footer>   
    </body>
</html>

