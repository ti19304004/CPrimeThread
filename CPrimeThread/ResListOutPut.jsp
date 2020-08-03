<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>スレッド一覧</title></head>
<body>
<div id="main">
	<div class="resBox">
		<h1>レス一覧 </h1>
		<table border="1">
			<tr><th>投稿者</th><th>レスの内容</th><th>レス日</th>
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
		レスの内容<input type='text' name='res_name' required><br>
		レスの作成者<input type='text' name='res_text' required></br>
		<input type="hidden"name='id' value='<%=request.getParameter("th_id") %>'>
	<input type="submit"></button>
</form>

	</div>

	<%-- <h3><a href="/myapps/ThreadList">カテゴリごとへ</a></h3> --%>
	<h3><a href="/myapps22/ThreadList">スレッド一覧</a></h3>
		<h3><a href="/myapps22/index">スレッドを作る</a></h3>


</body>
</html>
