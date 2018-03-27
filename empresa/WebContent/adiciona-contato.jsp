<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>


</head>
<body>
	<c:import url="/inc/cabecalho.jsp" />
	<h1>Adiciona Contatos</h1>
	<hr />

	<form action="contato-adicionado" method="post">
		Nome: 
		<input type="text" name="nome" /><br /> 
		
		E-mail: 
		<input type="text" name="email" /><br /> 
		
		Endereço: 
		<input type="text" name="endereco" /><br /> 
		
		Data Nascimento: 
		<caelum:campoData id="dataNascimento" /><br /> 
		
		
		<input type="submit" value="Gravar" />
		
		
	</form>
	<c:import url="/inc/rodape.jsp" />
</body>
</html>