<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>�f���T�C�g</title>

</head>
<body>
	<div id="main">
		<div class="createthread">
			<h1>�X���b�h�̍쐬</h1>
			<p>���z�͔��p�����œ��͂��Ă�������</p>
			<form method='post' action='CreateThreadServlet'>
				�X���b�h�̃^�C�g��<input type='text' name='th_title' required><br>
									<input type="submit"></button>
								</form>
			</div>
			<br><br>
			<div class="threadbox">
				<table border="1">
					<tr><th>�X���b�h�̃^�C�g��</th>
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
			<div class="createres">
				<form method='post' action='CPrimeThread'>
					���X�̓��e<input type='text' name='res_name' required><br>
					���X�̍쐬��<textarea input type='text' name='res_text' required></textarea></br>
					<input type="hidden"name='id'  rows="4" cols="10" value='<%=request.getParameter("th_id") %>'>
					<input type="submit"></button>
				</form>
			</div>
		</div>

</body>
</html>
