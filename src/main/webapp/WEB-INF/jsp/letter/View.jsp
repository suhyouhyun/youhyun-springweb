<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>메일함</title>
<script type="text/javascript">
	function confirmDelete() {
		if(confirm("삭제?"))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>메일 보기</h2>
	<p>
		<a href="./app/letter/ListSend">보낸 메일함</a> | <a href="./app/letter/ListReceive">받은 메일함</a>
	</p>
	<hr />
	<p>
		<span>${letter.letterId }</span> | <span style="font-weight: bold;">${letter.title }</span>
	</p>
	<p>
		<span>보낸사람 : ${letter.senderName }(${letter.senderId })</span>
	</p>
	<p>
		<span>받는사람 : ${letter.receiverName }(${letter.receiverId })</span>
	</p>
	<p>
		<span>${letter.cdate }</span>
	</p>
	<hr />
	<p>${letter.contentHtml }</p>
	<hr />
	<c:if test="${!empty sessionScope.MEMBER }">
		<p>
			<a href="./app/letter/delete?letterId=${letter.letterId }"  onclick="return confirmDelete();">삭제</a>
		</p>
	</c:if>
</body>
</html>