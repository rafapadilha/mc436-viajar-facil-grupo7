<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ViajarFácil.com</title>
<!-- Link to the site's main CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
<!-- Link to the Superfish menu CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/superfish.css" /> 
<!-- Link to the Nivo Slider CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/nivo-slider.css"  />
<!-- Link to the Pretty Photo CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/prettyPhoto.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<!-- Cufon scripts -->
<script type="text/javascript" src="js/cufon-yui.js"></script>  
<script type="text/javascript" src="js/ScriptMT_700.font.js"></script>
<script type="text/javascript" src="js/Androgyne_400.font.js"></script>
<!-- Superfish scripts -->
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<!-- Nivo Slider script -->
<script src="js/jquery.nivo.slider.pack.js" type="text/javascript"></script>
<!-- Custom JS script -->
<script src="js/custom.js" type="text/javascript"></script> 
<!-- PrettyPhoto script -->
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<!-- Define which elements should be replaced with Cufon -->
<script type="text/javascript">  
	Cufon.replace('#header #right_section ul.top_navigation li a.menulink', { fontFamily: 'Androgyne', hover: 'true', textShadow: '1px 1px 1px #fff' });
	Cufon.replace('h1', { fontFamily: 'ScriptMT', textShadow: '1px 1px 1px #fff' });
	Cufon.replace('h2', { fontFamily: 'ScriptMT', textShadow: '1px 1px 1px #fff' });
</script>  
<!-- Superfish menu options -->
<script type="text/javascript"> 
    $(document).ready(function(){ 
        $("ul.top_navigation").superfish(); 
    }); 
</script> 
<!-- Nivo Slider options -->
<script type="text/javascript">
$(window).load(function() {
    $('#slider').nivoSlider();
});
</script>
<!-- PrettyPhoto options -->
<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$("a[rel^='prettyPhoto']").prettyPhoto();
	});
</script>
</head>

<body>
<div id="wrapper">
	<!-- Begin header -->
<div id="header">
    	<div id="left_section">
        	<a href="index.html"><img src="images/logo.png" width="300" height="100" border="0" alt="moonbox logo" class="logo" /></a>
        </div>
        <div id="right_section">
        	<ul class="top_navigation">
            	<li><a class="menulink" href="index.html">home</a></li>
                <li><a class="menulink" href="Pesquisa.jsp">pesquisa</a></li>
                <li><a class="menulink">usuario</a>
                	<ul>
                    	<li><a href="Cadastro.jsp">cadastro</a></li>
                        <li><a href="Login.jsp">login</a></li>
                        </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- End header -->




   <!-- INSERIR AS COISAS AKIII !!!! -->
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.Interator" %>
    <%@ page import="entidades.Pacote" %>

            <%
            List<Pacote> lista = new ArrayList();
            lista = (List<Pacote>) request.getSession().getAttribute("lista_pacotes");
            %>    

            <%Pacote pac;
            Iterator it = lista.it();
            while(it.hasNext())
            {
                pac = it.next();
                String destino = pac.getDestino();
                String info = pac.getInfoDestino();
                double preco = pac.getPreco();
		%>
		<h2 align="center"><%=destino %></h2>
		<h3><b>Informações sobre o pacote:</b></h3>	<%=info%> 
		<h3><b>Data de ida:</b></h3>	<%=dataida%>
		<h3><b>Data de volta:</b></h3>	<%=datavorta%>
		<b><h3>Preço:</b></h3> <%=preco%> <br><br>
		<input name="Enviar" type="submit" class="submit_button" value="Enviar"/><br><br>
	    <%	
            }  
            %>



    <!-- Start footer -->
    <div id="footer">
    	<div id="footer_left_coloumn">
        	<img src="images/logo.png" width="222" height="34" alt="Footer Logo" />
        </div>
        <div id="footer_mid_coloumn">
        	<ul>
            	<li><a href="http://www.facebook.com"><img src="images/icons/facebook_32.png" width="32" height="32" alt="Facebook icon" border="0" /></a></li>
                <li><a href="http://www.flickr.com/"><img src="images/icons/flickr_32.png" width="32" height="32" alt="Flickr icon" border="0" /></a></li>
                <li><a href="http://www.twitter.com/_ViajarFacil"><img src="images/icons/twitter_32.png" width="32" height="32" alt="Twitter icon" border="0" /></a></li>
                <li><a href="http://vimeo.com/"><img src="images/icons/vimeo_32.png" width="32" height="32" alt="Vimeo icon" border="0" /></a></li>
            </ul>
        </div>
        <div id="footer_right_coloumn">
        	<img src="images/footer_all_rights_reserved.png" width="229" height="23" alt="All rights reserved" />
        </div>
    </div>
    <!-- End footer -->
</div>
</body>
</html>
