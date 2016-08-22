<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<title>Tarefa | Editar</title>
</head>
<c:import url="cabecalhoMostra.jsp" />
<body>
<h3>Alterar tarefa -${tarefa.id}</h3>
<form action ="alteraTarefa" method="post">
<input type="hidden" name="id" value="${tarefa.id}"/>
Descricao:<br/>
<textarea name="descricao" cols ="100" rows="5">
${tarefa.descricao}
</textarea>
<br/>
Finalizado?<input type="checkbox" name="finalizado" value="true"  ${tarefa.finalizado? 'checked' : ''}/><br/>

Data de Finalizacao:<br/>
 

<caelum:campoData id="dataFinalizacao" value="${tarefa.dataFinalizacao.time}"/>

<br/>
<input type="submit" value ="Alterar"/>
</form>
<c:import url="rodape.jsp" />
</body>
</html>