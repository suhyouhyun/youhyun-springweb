<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>쪽지 쓰기</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>쪽지 쓰기 </h2>
	<p>
		<a href="./app/members">회원 목록</a>
</p>
	
	<form action="./app/letter/add" method="post">
		<p>제목 :</p>
		<p>
			<input type="text" name="title" maxlength="100" style="width: 100%;"
				required>
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required></textarea>
		</p>
		<p>
			<button type="submit">보내기</button>
		</p>
		<input type="hidden" name="receiverId" value="${param.receiverId }" />
		<input type="hidden" name="receiverName" value="${param.receiverName }" />
	</form>
</body>
</html>
