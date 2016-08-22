<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar tarefas</title>
</head>
<c:import url="cabecalho.jsp" />
<body>
<h3>Adicionar tarefas</h3>
<form:errors path="tarefa.descricao"/>
<form action="adicionaTarefa" method="post">
Descrição: <br />
<textarea name="descricao" rows="2" cols="100"></textarea><br />

<br/>
<input type="submit" value="Adicionar">
</form>
<c:import url="rodape.jsp" />
</body>
</html>





