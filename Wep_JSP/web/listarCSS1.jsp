<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="fecha.listaComida"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
         <%-- <link rel="icon" type="image/x-icon" href="00_resources/images/esa_logo.ico"> --%>
        <style>
              h1 {
                font-size: 36px; /* Establece el tamaño de fuente del encabezado */
                text-align: center; /* Centra el encabezado */
            }
            * {
                box-sizing: border-box;
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
            body {
                font-family: Arial, sans-serif; /* Establece la fuente del texto */
                background-color: #FFF8DC; /* Establece el color de fondo de la página */
                margin: 50px; /* Elimina el margen predeterminado del body */
                padding: 0; /* Elimina el relleno predeterminado del body */
            }
            /* Create four equal columns that floats next to each other */
            .column {
                float: left;
                width: 25%;
                padding: 10px;
                height: 300px; /* Should be removed. Only for demonstration */
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - makes the four columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 1000px) {
                .column {
                    width: 100%;
                }
            }
        </style>
    </head>

    <body>  
        <header>
		Practica 4 HLC
	</header> 
        </br></br>
        <%--<%!HashMap<Integer, Country> countries = new HashMap<Integer, Country>();%>
        <%
            countries.put(1, new Country("España", "spain.png", 169, new GregorianCalendar(1975,3,28)));
            countries.put(2, new Country("Alemania", "germany.png", 614, new GregorianCalendar(1975,3,28)));
            countries.put(3, new Country("Francia", "france.png", 778, new GregorianCalendar(1975,3,28)));
            countries.put(4, new Country("Noruega", "norway.png", 33, new GregorianCalendar(1975,3,28)));
            countries.put(5, new Country("Italia", "italy.png", 397, new GregorianCalendar(1975,3,28)));
            countries.put(6, new Country("Irlanda", "ireland.png", 12, new GregorianCalendar(1975,3,28)));
        %>--%>
        
            <% Map<Integer, fecha.listaComida> countries = new Hashtable<Integer, fecha.listaComida>();
                
                countries.put(1, new listaComida("Paella", "paella.png", 169, new GregorianCalendar(1975,3,25)));
                countries.put(2, new listaComida("Kartoffelsalat", "kartoffelsalat.png", 614, new GregorianCalendar(1975,2,28)));
                countries.put(3, new listaComida("Stroganoff", "stroganoff.png", 778, new GregorianCalendar(1975,7,28)));
                countries.put(4, new listaComida("Prosciutto di Parma", "prosciutto.png", 33, new GregorianCalendar(1975,3,28)));
                countries.put(5, new listaComida("Fish and Chips", "fish.png", 397, new GregorianCalendar(1975,3,28)));
                countries.put(6, new listaComida("Irish Stew", "stew.png", 12, new GregorianCalendar(1976,3,28)));
                countries.put(7, new listaComida("Finnbiff", "finnbiff.jpg", 778, new GregorianCalendar(1975,3,30)));
                countries.put(8, new listaComida("Tacos", "tacos.png", 33, new GregorianCalendar(1975,5,28)));
                countries.put(9, new listaComida("Escudella", "escudella.png", 397, new GregorianCalendar(1976,3,28)));
                countries.put(10, new listaComida("Saltenas", "saltena.png", 12, new GregorianCalendar(1975,3,28)));
                pageContext.setAttribute("sharePrice", countries);
            %>

         
        <section class="row">
           
            <%
                for(java.util.Map.Entry<Integer, fecha.listaComida> mem : countries.entrySet()) {
                    int index = mem.getKey();
                    listaComida country = mem.getValue();
            %>
            <article class="column">
                <div style="text-align:center">
                    <%--<img src="00_resources/images/<%=country.getFoto()%>" width="220" height="150" alt="Flag Image">--%>
                    <img src="img/<%=country.getFoto()%>" width="220" height="150" alt="Comida Imagen">
                    <h5><%=country.getNombre()%></h5>
                    <% String datos = "\nNombre: " + country.getNombre() + "     \nCalorias: " + country.getCalorias() + "     \nFecha Invencion: " + country.getFecha();
                        %>
                    <form action="detalles.jsp">
                        <input type="hidden" value="<%=datos%>" name="country"/>
                        <input type="submit" class="btn btn-primary" value="Saber Más"/>
                    </form>
                </div>
            </article>
            <%
                }
            %>
        </section>
         <p>Pulsa <a href="index.jsp">aquí</a> para volver al index.</p>
          <footer>
		&copy; Derechos reservados
	</footer>   
    </body>
</html>
