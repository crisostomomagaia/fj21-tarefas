<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" type="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:formatDate pattern ="dd/MM/yyyy" value="${value}" var ="data"/>
<input type="text" id="${id}" name="${id}" value="${data}" />

<script>
$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>