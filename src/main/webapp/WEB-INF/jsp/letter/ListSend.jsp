<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
<base href="${pageContext.request.contextPath }/" />
<title>보낸 쪽지함</title>
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
	<script>
		if(self.name != 'reload') 
		{
			self.name = 'reload';
			self.location.reload(true);
		} 
		else self.name =' ';
	</script>
	<h2>보낸 쪽지함</h2>
	<p>전체 ${totalCount }건</p>
	<form action="./app/letter/Listsend">
		<input type="number" name="page" value="${param.page }" placeholder="페이지"
			min="1" max="${totalCount / 100 + 1 }" step="1" style="width: 50px;">
	</form>
	<table>
		<thead>
			<tr>
			
				<th>쪽지번호</th>
				<th>제목</th>
				<th>받는사람</th>
				<th>보낸 날짜</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="letter" items="${letterList}">
				<tr>
					<td><a href="./app/letter/View?letterId=${letter.letterId }">${letter.letterId }</a></td>
					<td><a href="./app/letter/View?letterId=${letter.letterId }">${letter.title }</a></td>
					<td>${letter.receiverName }</td>
					<td>${letter.cdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
</html>