<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ViajarFácil.com</title>
<!-- Link to the site's main CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
<!-- Link to the Superfish menu CSS style -->
<link rel="stylesheet" type="text/css" media="screen" href="css/superfish.css" /> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<!-- Cufon scripts -->
<script type="text/javascript" src="js/cufon-yui.js"></script>  
<script type="text/javascript" src="js/ScriptMT_700.font.js"></script>
<script type="text/javascript" src="js/Androgyne_400.font.js"></script>
<!-- Superfish scripts -->
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
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
    <h1>A  <span style="color:#08a5ff;">ViajarFacil.com</span> oferece pacotes para todos os gostos!</h1>
    <div class="dotted_line"></div>
	<!-- Begin content -->
    <div id="content">
		<div id="contact_us_left_coloumn">
   		  <h2 align="center">Pesquisa</h2>
			<table width="940" border="0">
			<form action="PesquisaServlet" method="post">
  				<tr>
    				<td width="187">Destino:</td>
    				<td width="299"><input name="destino" type="text" size="40" /></td>
  				</tr>
  				<tr>
   				<td>Data de ida:</td>
    				<td width="940">
					<select name="diaIda">
					<%
					for(int i=1;i<=31;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
					/<select name="mesIda">
					<%
					for(int i=1;i<=12;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
					/<select name="anoIda">
					<%
					for(int i=2011;i<=2013;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
				</td>
  				</tr>
  				<tr>
   				<td>Data de volta:</td>
    				<td width="940">
					<select name="diaVolta">
					<%
					for(int i=1;i<=31;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
					/<select name="mesVolta">
					<%
					for(int i=1;i<=12;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
					/<select name="anoVolta">
					<%
					for(int i=2011;i<=2013;i++) { %>
					<option value="<%=i%>"><%=i%></option>
					<%}%>
					</select>
				</td>
  				</tr>
                		<tr align="center"><td></td><td></td><td></td>
    					<td><input name="Enviar" type="submit" class="submit_button" value="Enviar"/></td>
				</tr>
			</form>
			</table>
			<br />
   	 	</div>
    </div>
    <div class="clear"></div>
	<div class="dotted_line"></div>
    <!-- End content -->
    <!-- Begin footer -->
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
