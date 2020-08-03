

<%@ page pageEncoding="Windows-31J"
contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>スレッド一覧</title></head>
<body>

	<h1>スレッド一覧 </h1>
	<table border="1">
		<tr><th>スレッドID</th><th>スレッドのタイトル</th><th>スレッドの作成者</th><th>スレッドの説明</th><th>スレッドのカテゴリー</th><th>作成日</th>
		<c:forEach var="prof" items="${ThreadList}">
			<tr>
				<td>${prof.th_id}</td>
				<td>${prof.th_name}</td>
				<td>${prof.th_title}</td>
				<td>${prof.th_category}</td>
				<td>${prof.th_description}</td>
				<td>${prof.th_date}</td>
				<td>
					<a href="/myapps22/ResList?th_id=${prof.th_id}">中へ</a>

				</form>
				</td>

		</c:forEach>
	</table>
		<h3><a href="/myapps22/index">スレを作る</a></h3>



</body>
</html>
