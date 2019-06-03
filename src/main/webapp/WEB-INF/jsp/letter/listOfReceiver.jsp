<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>LETTER VIEW LIST</title>
<style type="text/css">
table {
	margin-top: 10px;
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	width: 100%;
}
th, td {
	padding: 5px 0;
}
th {
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 목록</h2>

	<table>
		<thead>
			<tr>
				<th>편지번호</th>
				<th>제목</th>
				<th>보낸사람</th>
				<th>보낸일시</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="letter" items="${letters}">
				<tr>
					<th><a href="./app/letter/view?letterId=${letter.letterId } ">${letter.letterId }</a></th>
					<th><a href="./app/letter/view?letterId=${letter.letterId } ">${letter.title }</a></th>
					<th>${letter.senderName }</th>
					<th>${letter.cdate }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
</html>