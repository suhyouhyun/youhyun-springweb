<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
<script type="text/javascript">
	function confirmDelete() {
		if (confirm("삭제?"))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 보기</h2>
	<p>
	<c:if test="${letter.receiverId == sessionScope.MEMBER.memberId or letter.senderId == sessionScope.MEMBER.memberId }">
			<a href="./app/letter/delete?letterId=${letter.letterId}&mode=${param.mode}"
				onclick="return confirmDelete();">글삭제</a>
</c:if>

	</p>
	<hr />
	<p>
		<span>${letter.letterId }</span> | <span style="font-weight: bold;">${letter.title }</span>
	</p>
	<p>
		<span>${letter.cdate }</span> | <span>보낸사람 : ${letter.senderName }</span> | <span>받은사람 : ${letter.receiverName }</span>
	</p>
	<hr />
	<p>${letter.contentHtml }</p>
	<hr />
</body>
</html>