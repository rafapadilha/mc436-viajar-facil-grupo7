<%@page import="br.unicamp.ic.control.CadastroControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Lista de usuários</h1>

	<%		
		for (String nome : CadastroControl.getInstance().getListaUsuarios())
			out.println(nome + "<br/>");
	%>
	
	<br/>
	
	<%
	
		String ultimoCadastro = (String)request.getSession().getAttribute("ultimoCadastro");
				
		if (ultimoCadastro == null)
			out.println("Voce ainda não cadastrou ninguem nessa sessao");
		else
			out.println("Ultimo cadastro da sessao: " + ultimoCadastro);
	
	%>

</body>
</html>