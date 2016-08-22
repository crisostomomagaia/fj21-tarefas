<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Tarefas | CMagaia</title>
</head>
<c:import url="cabecalhoLista.jsp" />
<body>
	<td>${tarefa.descricao}</td>
	<c:if test="${tarefa.finalizado eq true}">
		<td>Finalizado</td>
	</c:if>
	<c:if test="${tarefa.finalizado eq false}">
		<td><a href="#" onClick="finalizaAgora(${tarefa.id})">
				Finalizar </a></td>
	</c:if>
	<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
			pattern="dd/MM/yyyy" /></td>

	<a href="novaTarefa"> Criar nova tarefa</a>
	<br />
	<br />
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Descricao</th>
			<th>Finalizada?</th>
			<th>Data de finalizacao</th>
			<th>Delete</th>
			<th>Remove</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq false}">
					<td><a href="#" onClick="finalizaAgora(${tarefa.id})">
							Finalizar </a></td>
				</c:if>
				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
		</c:forEach>
	</table>


</body>
</html>