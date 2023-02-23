<!DOCTYPE html>
<html  lang="es">
<head>
<title>Page Title</title>
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
</style>
</head>
<body>
    
     <header>
		Practica 4 HLC
	</header>
<%@page language="java" import="java.util.*" %>
<H1>Bienvenido a JSPCalendar</H1>

<P>Hoy es</P>
<jsp:useBean id="clock" class="fecha.JspCalendar" />

<UL>
<LI>Día: <%= clock.getDayOfMonth() %>
<LI>Mes: <%= clock.getMonthInt() %>
<LI>Año: <%= clock.getYear() %>
   

</UL>
<%-- Check for AM or PM --%>
<%! int time = Calendar.getInstance().get(Calendar.AM_PM); %>
<%
if (time == Calendar.AM) {
%>
Buenos días
<%
}
else {
%>
Buenas tardes
<%
}
%>
<%--
<%@ include file="copyright.html" %>
--%>


<h3>Fatima Signo: <%= clock.SignoZodiaco() %></h3>
<h3>Fatima edad: <%= clock.calcularEdad() %></h3>

<h3>Rafa Signo: <%= clock.SignoZodiaco2() %></h3>
<h3>Rafa edad: <%= clock.calcularEdad2() %></h3>
 <p>Pulsa <a href="index.jsp">aquí</a> para volver al index.</p>
 <footer>
		&copy; Derechos reservados
	</footer>   
</body>
</html> 
