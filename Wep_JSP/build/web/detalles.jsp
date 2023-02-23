<%-- 
    Document   : detalles
    Created on : 22-feb-2023, 14:15:27
    Author     : Fatima

con get parameter tomamos lo que nos este pasando la clase anterior
<%
    String countryIndex = request.getParameter("country");
%>

<%
    int index = Integer.parseInt(countryIndex);
    listaComidas country = listaComidas.get(index);
%>

Aquí, estamos convirtiendo el índice a un valor int utilizando el método 
parseInt() de la clase Integer. Luego, estamos usando el índice para obtener 
el objeto country correspondiente de la lista listaComidas. Ahora, puedes 
usar el objeto country para mostrar información adicional en la página detalles.jsp.

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="fecha.listaComida"%>

<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles de la comida</title>
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

            p {
                font-size: 18px; /* Establece el tamaño de fuente del texto */
                line-height: 1.5; /* Establece la altura de línea del texto */
                padding: 20px; /* Agrega un relleno alrededor del texto */
                
            }

            img {
                text-align: center;
                display: block; /* Establece la imagen como un bloque, para que no haya elementos en línea a su lado */
                margin: 0 auto; /* Centra la imagen horizontalmente dentro de su contenedor */
                max-width: 100%; /* Establece la anchura máxima de la imagen al ancho del contenedor */
                height: auto; /* Establece la altura de la imagen en función de su anchura, para mantener la proporción */
            }

        </style>
    </head>
    <body>
        <header>
		Practica 4 HLC
	</header>
        <h1>Comidas del mundo</h1>
   
        <% 
                String datos = request.getParameter("country");
                int index = 0;
            if (datos != null) {
               

                if (datos.contains("Paella")) {
        %>
        
       
        
        
        <p><h2>La paella</h2></p>
        <img src="img/paella.png" width="220" height="150" alt="Paella">
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        
        <p>La paella es un plato típico de la cocina española, originario 
            de la Comunidad Valenciana. Se prepara en una sartén ancha y 
            poco profunda, llamada paellera, y se cocina sobre una fuente 
            de calor intenso, como una llama abierta o un fuego de leña.</br></br>

            La paella se hace tradicionalmente con arroz, pollo, conejo, 
            judías verdes, tomate, pimiento, azafrán y otros ingredientes
            según la región y el gusto personal. Sin embargo, existen muchas 
            variaciones de la receta y se pueden incluir mariscos, pescado, 
            cerdo, chorizo, alcachofas, garrofón y otros ingredientes.</br></br>

            El nombre de la paella proviene del término valenciano "paellera", 
            que es el nombre de la sartén en la que se cocina el plato. La 
            paella es un plato muy popular en España, y se sirve en 
            ocasiones especiales, como bodas, fiestas y celebraciones.</br></br>

            La paella es un plato muy versátil, se puede hacer para 
            alimentar a una gran cantidad de personas, y es relativamente 
            fácil de preparar. Se puede encontrar en muchos restaurantes 
            españoles alrededor del mundo y se ha convertido en un plato 
            internacionalmente reconocido de la gastronomía española.</br></br></p>
            <%
                
        } else if (datos.contains("Kartoffelsalat")) {
            %><p><h2>El Kartoffelsalat</h2></p>
        <img src="img/kartoffelsalat.png" width="220" height="150" alt="Kartoffelsalat">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>El Kartoffelsalat es una ensalada de patatas que se originó 
            en Alemania y se ha convertido en un plato popular en muchos 
            países europeos y en todo el mundo. La ensalada se hace 
            generalmente con patatas cocidas, que se cortan en rodajas y 
            se mezclan con una variedad de ingredientes.</br></br>

            Los ingredientes comunes en un Kartoffelsalat incluyen 
            cebolla, encurtidos, apio, huevo duro, tocino, mayonesa y 
            vinagre. La combinación de ingredientes y la preparación 
            varían según la región y el gusto personal, por lo que hay 
            muchas variaciones de la receta.</br></br>

            El Kartoffelsalat se suele servir como acompañamiento para 
            platos principales, como carnes asadas, salchichas o pescado. 
            También es una opción popular para llevar a picnics, fiestas 
            y reuniones familiares.</br></br>

            Además de su sabor delicioso, el Kartoffelsalat también es 
            una opción popular debido a su facilidad de preparación. 
            Puede ser hecho con antelación y refrigerado hasta el momento 
            de servir, lo que lo convierte en una opción práctica para 
            eventos y reuniones.</br></br>

            En resumen, el Kartoffelsalat es una ensalada de patatas 
            originaria de Alemania, que se hace con una variedad de 
            ingredientes y se sirve como acompañamiento para platos 
            principales o como plato independiente. Es una opción práctica 
            y deliciosa para eventos y reuniones.</br></br></p>

        <%
    } else if (datos.contains("Stroganoff")) {
        %><p><h2>El Stroganoff</h2></p>
        <img src="img/stroganoff.png" width="220" height="150" alt="Stroganoff">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            El Stroganoff es un plato de origen ruso, que consiste en tiras 
            de carne salteadas en una salsa cremosa y servido 
            con arroz o pasta. La receta original del Stroganoff fue creada 
            en el siglo XIX para la familia Stroganov, una de las familias 
            más influyentes de Rusia en ese momento.</br></br>

            La carne tradicionalmente utilizada en el Stroganoff es la 
            ternera, pero también se puede hacer con pollo, cerdo, cordero 
            o incluso setas para una versión vegetariana. Las tiras de carne 
            se saltean en una sartén con cebolla, ajo y champiñones, y luego
            se añade una salsa cremosa hecha con crema agria, mostaza, caldo 
            y vino blanco. La salsa se espesa con un poco de harina o almidón 
            de maíz, y se sazona con sal y pimienta al gusto.</br></br>

            El Stroganoff es un plato muy versátil, y se puede ajustar según 
            los gustos personales. Por ejemplo, algunas personas prefieren 
            añadir un toque de picante con chiles, mientras que otras prefieren 
            una versión más suave. También se pueden añadir verduras como 
            guisantes, pimientos o zanahorias para darle un toque de color y 
            sabor adicional.</br></br>

            El Stroganoff se ha vuelto muy popular en todo el mundo, y se 
            puede encontrar en muchos restaurantes internacionales. Es un 
            plato sustancioso, reconfortante y fácil de preparar, lo que lo
            hace ideal para una cena en familia o para impresionar a invitados.</br></br>
        </p>
        <%
    } else if (datos.contains("Prosciutto di Parma")) {
        %><p><h2>El Prosciutto di Parma</h2></p>
        <img src="img/prosciutto.png" width="220" height="150" alt="Prosciutto de Parma">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            El Prosciutto di Parma es un tipo de jamón curado originario de 
            la región de Parma, en Italia. Se hace tradicionalmente con la pata 
            trasera del cerdo, y se cura durante un período de 12 a 36 meses 
            para lograr su sabor y textura característicos.</br></br>

            El proceso de elaboración del Prosciutto di Parma es muy 
            específico y se rige por estrictas normas de producción. 
            El cerdo utilizado debe ser de raza italiana y criado en la 
            región de Emilia-Romaña, y debe ser alimentado con una dieta 
            especial que incluya suero de leche. Después de la matanza, 
            la pata trasera del cerdo se sala y se deja reposar durante 
            varias semanas, para luego ser lavada y secada al aire libre.</br></br>

            Una vez que la carne ha sido preparada, se cuelga en un ambiente
            fresco y ventilado para su curación. Durante este período, se 
            desarrolla un sabor delicado y complejo, que combina notas saladas 
            y dulces con una textura suave y marmórea.</br></br>

            El Prosciutto di Parma es un ingrediente muy valorado en la 
            gastronomía italiana, y se utiliza en una variedad de platos,
            desde aperitivos hasta ensaladas y platos principales. Se puede
            disfrutar solo, en bocadillos o como complemento de quesos y frutas.</br></br>

            En resumen, el Prosciutto di Parma es un jamón curado italiano 
            de alta calidad, originario de la región de Parma. Se produce 
            siguiendo un proceso de elaboración específico y se cura durante
            un período de tiempo prolongado para lograr su sabor y textura 
            únicos. Es un ingrediente valorado en la cocina italiana y se 
            utiliza en una variedad de platos.</br></br>
        </p>
        <%
    } else if (datos.contains("Fish and Chips")) {
        %><p><h2>El Fish and Chips</h2></p>
<img src="img/fish.png" width="220" height="150" alt="Fish and ships">

<p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            
            El Fish and Chips es un plato británico clásico que se ha 
            convertido en un icono de la gastronomía inglesa. Consiste en 
            filetes de pescado rebozados y fritos, servidos con papas fritas 
            y tradicionalmente se sirve con salsa tártara y una rodaja de limón.</br></br>

            El tipo de pescado utilizado para el Fish and Chips varía según
            la región, pero el bacalao, la merluza y el abadejo son algunos
            de los pescados más populares. El pescado se corta en filetes, 
            se sala y se sumerge en una masa de harina, cerveza y agua, y se
            fríe en aceite caliente hasta que esté dorado y crujiente. Las
            papas, peladas y cortadas en tiras gruesas, se fríen en el mismo
            aceite hasta que estén doradas y crujientes.</br></br>

            El Fish and Chips se sirve generalmente en papel de periódico, 
            lo que le da un toque rústico y auténtico. Se suele acompañar 
            con salsa tártara, una mezcla de mayonesa, pepinillos, cebolla,
            mostaza y jugo de limón, que complementa perfectamente el sabor 
            del pescado y las papas fritas. Algunas variantes también incluyen 
            guisantes, puré de guisantes o vinagre, que se rocían sobre el pescado
            y las papas para darles aún más sabor.</br></br>

            El Fish and Chips es un plato popular en todo el Reino Unido y 
            también se ha hecho popular en otros países. Es un alimento cómodo
            y rápido que se sirve en pubs, restaurantes y tiendas de comida 
            para llevar. También se puede encontrar en ferias y festivales 
            de alimentos en todo el mundo.</br></br>

            En resumen, el Fish and Chips es un plato británico clásico que 
            consiste en filetes de pescado rebozados y fritos, servidos con 
            papas fritas. Es un plato popular en todo el Reino Unido y es 
            considerado como uno de los platos emblemáticos de la gastronomía 
            británica. Es una comida rápida y cómoda que se puede disfrutar 
            en cualquier momento y en cualquier lugar.</br></br>
        </p>
        <%
    } else if (datos.contains("Irish Stew")) {
        %><p><h2>La Irish Stew</h2></p>
        <img src="img/stew.png" width="220" height="150" alt="Iris Stew">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            El Irish Stew es un guiso tradicional irlandés que se ha 
            convertido en uno de los platos más emblemáticos de la cocina 
            irlandesa. Se prepara generalmente con cordero, papas, 
            cebollas y zanahorias, y se cocina a fuego lento durante 
            varias horas para obtener un guiso espeso y sustancioso.</br></br>

            El ingrediente principal del Irish Stew es el cordero, que se 
            corta en trozos grandes y se dora en una olla grande antes de 
            añadir las verduras y el caldo. Las papas, cebollas y zanahorias
            se pelan y cortan en trozos grandes, y se añaden al guiso junto
            con el caldo de cordero y hierbas aromáticas como el romero y el 
            tomillo. Se cocina todo a fuego lento durante varias horas, hasta 
            que la carne esté tierna y las verduras estén suaves y se hayan
            mezclado con los sabores de la carne y las hierbas.</br></br>

            El Irish Stew es un plato reconfortante y sustancioso, perfecto
            para los días fríos de invierno. Se suele servir caliente, 
            acompañado de pan crujiente o galletas saladas. Es un plato 
            popular en los pubs y restaurantes de Irlanda, y también se ha 
            hecho popular en otros países.</br></br>

            Aunque la receta original del Irish Stew era muy básica, a 
            menudo se le añaden otros ingredientes en la actualidad, como
            cerveza negra, apio, col y guisantes, dependiendo de la región 
            o el gusto personal del cocinero.</br></br>

            En resumen, el Irish Stew es un guiso tradicional irlandés 
            hecho con cordero, papas, cebollas y zanahorias, y se cocina 
            a fuego lento durante varias horas para obtener un guiso espeso
            y sustancioso. Es un plato reconfortante y sustancioso, y es una
            parte importante de la cultura culinaria irlandesa.</br></br>
        </p><%
    } else if (datos.contains("Finnbiff")) {
        %><p><h2>El Finnbiff</h2></p>
        <img src="img/finnbiff.jpg" width="220" height="150" alt="Finnbiff">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            El Finnbiff es un guiso de carne noruego hecho con carne de reno. 
            Es un plato popular en el norte de Noruega, especialmente en la
            región de Finnmark, de donde proviene el nombre "Finnbiff".</br></br>

            El reno es un animal que es muy común en las regiones árticas de
            Noruega, y es un ingrediente popular en la cocina noruega. El 
            Finnbiff se hace típicamente con carne de reno cortada en trozos 
            pequeños y salteada en mantequilla hasta que esté dorada. Luego
            se agregan cebollas, champiñones y a veces otros vegetales como 
            zanahorias y papas. La mezcla se cocina a fuego lento con caldo 
            de carne y bayas de enebro, una hierba común en la cocina noruega,
            hasta que la carne esté tierna y los sabores se hayan mezclado.</br></br>

            El Finnbiff se sirve generalmente caliente, acompañado de papas 
            hervidas o puré de papas. También puede ser acompañado por 
            arándanos rojos, una guarnición tradicional en la cocina noruega,
            que le da al plato un sabor dulce y ácido que complementa 
            perfectamente la carne.</br></br>

            El Finnbiff es considerado un plato tradicional y de alta cocina
            en Noruega, y a menudo se sirve en ocasiones especiales como bodas,
            cumpleaños y otras celebraciones importantes. También es un plato 
            popular en los restaurantes noruegos y en los festivales de comida 
            en todo el país.</br></br>

            En resumen, el Finnbiff es un guiso de carne noruego hecho con 
            carne de reno, cebollas, champiñones, caldo de carne y bayas de 
            enebro. Es un plato tradicional y de alta cocina en Noruega, y 
            es un símbolo de la rica cultura culinaria de Noruega.</br></br>
        </p><%
    } else if (datos.contains("Tacos")) {
        %><p><h2>Los Tacos</h2></p>
        <img src="img/tacos.png" width="220" height="150" alt="Tacos">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            Los tacos son una deliciosa comida típica de México, que ha 
            ganado popularidad en todo el mundo. Consisten en una tortilla
            de maíz o de harina, que se rellena con una variedad de ingredientes,
            como carne, pollo, pescado, mariscos, frijoles, verduras, queso,
            aguacate, entre otros.</br></br>

            La carne es uno de los ingredientes más comunes en los tacos, y
            se puede preparar de muchas maneras, como asada, al pastor, de 
            carnitas, de chorizo, entre otras. También existen opciones 
            vegetarianas y veganas, como los tacos de verduras, tofu, setas,
            entre otros.</br></br>

            Los tacos se pueden servir con una gran variedad de salsas, como
            la salsa roja picante, la salsa verde, la salsa de aguacate, 
            entre otras. Además, se pueden acompañar con limón, cilantro, 
            cebolla, rábano, queso, crema y otros ingredientes.</br></br>

            Los tacos son una comida versátil y fácil de preparar, lo que 
            los hace ideales para una comida rápida o una cena informal. 
            Además, se pueden encontrar en muchos lugares, desde puestos 
            callejeros hasta restaurantes de alta cocina. También se pueden 
            hacer en casa con ingredientes frescos y naturales.</br></br>

            En resumen, los tacos son una comida deliciosa y popular que 
            representa la cultura y la gastronomía de México, y que ha ganado 
            seguidores en todo el mundo.</br></br>
        </p><%
    } else if (datos.contains("Escudella")) {
        %><p><h2>La Escudella</h2></p>
        <img src="img/escudella.png" width="220" height="150" alt="Escudella">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            La escudella de Andorra es un plato tradicional de la cocina 
            andorrana que se suele preparar en ocasiones especiales como 
            Navidad o en celebraciones familiares. Es similar a la escudella
            catalana, pero tiene algunas variaciones propias de la gastronomía 
            andorrana.</br></br>

            Para preparar la escudella de Andorra, se utilizan ingredientes
            típicos de la región, como la carn d'olla (una mezcla de carnes 
            de cerdo, ternera y/o pollo), butifarra (una salchicha de cerdo 
            típica de Cataluña y de algunas zonas de España), col, patata,
            zanahoria, nabo y arroz.</br></br>

            La preparación de la escudella de Andorra es similar a la escudella
            catalana. Primero se cocinan las carnes y las verduras en una 
            olla grande con agua durante varias horas, hasta que estén 
            tiernas. Luego se separan los ingredientes sólidos y se cuela 
            el caldo para eliminar las impurezas. Después se vuelve a añadir 
            los ingredientes sólidos y se agrega el arroz, que se cocina 
            hasta que esté listo.</br></br>

            En algunos casos, se añaden otros ingredientes como alubias o 
            garbanzos, y se sirve con una salsa alioli (a base de ajo y aceite)
            y pan.</br></br>

            La escudella de Andorra es un plato muy reconfortante y nutritivo,
            ideal para disfrutar en días fríos o en celebraciones especiales.
            Es una parte importante de la gastronomía andorrana y refleja la 
            rica tradición culinaria de la región.</br></br>
        </p><%
    } else if (datos.contains("Saltenas")) {
        %><p><h2>La Salteña</h2></p>
        <img src="img/saltena.png" width="220" height="150" alt="Salteña">
        
        <p><u><strong>  Datos del objeto Selecionado: </strong></u></p>
        <p> <%=datos%></p>
        
         <p><u><strong> Descripcion </strong></u></p>
        <p>
            Las salteñas son un platillo típico de la gastronomía boliviana, 
            especialmente en la región de Salta, en el sur del país. Consisten
            en una empanada grande, rellena de carne, papas, zanahorias,
            cebolla, ajo, comino, ají amarillo y otros ingredientes, que 
            se cuece al horno o se fríe en aceite.</br></br>

            La masa de las salteñas se prepara con harina de trigo, manteca,
            levadura, sal y agua, y se amasa hasta obtener una consistencia 
            suave y elástica. Se forma una bola que se deja reposar durante 
            algunas horas para que la masa fermente y tome sabor.</br></br>

            Para preparar el relleno, se cocinan los ingredientes con especias
            y condimentos para dar sabor. Se corta la carne en pequeños 
            trozos y se cocina con las verduras, el ají amarillo y otros 
            ingredientes hasta que estén suaves y tiernos.</br></br>

            Luego se rellena la masa con el guiso y se cierra, dejando una 
            pequeña abertura en la parte superior para que salga el vapor 
            durante la cocción. Se pincela con huevo batido antes de hornear
            o freír para que la masa quede dorada y crujiente.</br></br>

            Las salteñas son una comida popular en Bolivia y se pueden 
            encontrar en muchas panaderías, restaurantes y puestos callejeros.
            Se suelen servir calientes y se pueden acompañar con una variedad
            de salsas y bebidas, como la chicha o la cerveza.</br></br>

            Las salteñas son un platillo delicioso y lleno de sabor que
            refleja la rica tradición culinaria de Bolivia. Son ideales 
            para un almuerzo rápido o para disfrutar con amigos y familiares.</br></br>
        </p><%
    } else {
        %><p>No hay información disponible para esta comida.</p><%
    }
} else {
        %><p>No se seleccionó ninguna comida.</p><%
}
        %>
         <p>Pulsa <a href="index.jsp">aquí</a> para volver al index.</p>
         <footer>
		&copy; Derechos reservados
	</footer>
    </body>
</html>
