<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�X���b�h�ꗗ</title></head>
<body>
<div id="main">
	<div class="resBox">
		<h1>���X�ꗗ </h1>
		<table border="1">
			<tr><th>���e��</th><th>���X�̓��e</th><th>���X��</th>
			<c:forEach var="prof" items="${ResList}">
				<tr>
					<td>${prof.res_name}</td>
					<td>${prof.res_text}</td>
					<td>${prof.res_date}</td>
				</c:forEach>
			</table>
	</div>
	<br><br>
	<form method='post' action='CPrimeThread'>
		���X�̓��e<input type='text' name='res_name' required><br>
		���X�̍쐬��<input type='text' name='res_text' required></br>
		<input type="hidden"name='id' value='<%=request.getParameter("th_id") %>'>
	<input type="submit"></button>
</form>

	</div>

	<%-- <h3><a href="/myapps/ThreadList">�J�e�S�����Ƃ�</a></h3> --%>
	<h3><a href="/myapps22/ThreadList">�X���b�h�ꗗ</a></h3>
		<h3><a href="/myapps22/index">�X���b�h�����</a></h3>


</body>
</html>
