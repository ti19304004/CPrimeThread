<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>掲示板サイト</title>

</head>
<body>
	<div id="main">
		<div class="createthread">
			<h1>スレッドの作成</h1>
			<p>金額は半角数字で入力してください</p>
			<form method='post' action='CreateThreadServlet'>
				スレッドのタイトル<input type='text' name='th_title' required><br>
									<input type="submit"></button>
								</form>
			</div>
			<br><br>
			<div class="threadbox">
				<table border="1">
					<tr><th>スレッドのタイトル</th>
					<c:forEach var="prof" items="${ThreadList}">
						<tr>
							<td><a href="/myapps22/ResList?th_id=${prof.th_id}">${prof.th_title}</a></td>

							</form>
							</td>

					</c:forEach>
				</table>
			</div>
			<br><br>
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
			<div class="createres">
				<form method='post' action='CPrimeThread'>
					レスの内容<input type='text' name='res_name' required><br>
					レスの作成者<textarea input type='text' name='res_text' required></textarea></br>
					<input type="hidden"name='id'  rows="4" cols="10" value='<%=request.getParameter("th_id") %>'>
					<input type="submit"></button>
				</form>
			</div>
		</div>

</body>
</html>
