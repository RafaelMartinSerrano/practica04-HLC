<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="fecha.Country"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <link rel="icon" type="image/x-icon" href="00_resources/images/esa_logo.ico">
        <style>
            * {
                box-sizing: border-box;
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
        <%!HashMap<Integer, Country> countries = new HashMap<Integer, Country>();%>
        <%
            countries.put(1, new Country("España", "spain.png", 169, new GregorianCalendar(1975,3,28)));
            countries.put(2, new Country("Alemania", "germany.png", 614, new GregorianCalendar(1975,3,28)));
            countries.put(3, new Country("Francia", "france.png", 778, new GregorianCalendar(1975,3,28)));
            countries.put(4, new Country("Noruega", "norway.png", 33, new GregorianCalendar(1975,3,28)));
            countries.put(5, new Country("Italia", "italy.png", 397, new GregorianCalendar(1975,3,28)));
            countries.put(6, new Country("Irlanda", "ireland.png", 12, new GregorianCalendar(1975,3,28)));
        %>


        <section class="row">
            <%
                for(java.util.Map.Entry<Integer, Country> mem : countries.entrySet()) {
                    int index = mem.getKey();
                    Country country = mem.getValue();
            %>
            <article class="column">
                <div style="text-align:center">
                    <img src="00_resources/images/<%=country.getFlagImage()%>" width="220" height="150" alt="Flag Image">
                    <h5><%=country.getName()%></h5>
                    <form action="detalles.jsp">
                        <input type="hidden" value="<%=index%>" name="country"/>
                        <input type="submit" class="btn btn-primary" value="Saber Más"/>
                    </form>
                </div>
            </article>
            <%
                }
            %>
        </section>
         <p>Pulsa <a href="index.jsp">aquí</a> para volver al index.</p>

    </body>
</html>
