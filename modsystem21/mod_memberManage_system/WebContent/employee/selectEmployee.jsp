<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var email = "";
	function managerAllClick() {
		var mCheck = document.eForm.mCheck.checked;
		alert(mCheck);
	}

	function closeFunction() {
		opener.insert.manager.value = email;
		window.close();
	}
</script>
</head>
<body>
	<form action="" name="eForm">
		<c:choose>
			<c:when test="${sessionScope.mList!=null}">
				<input type="checkbox" onclick="managerAllClick(manager)"
					name="mCheck">사업부<br>
				<c:forEach items="${sessionScope.mList }" var="m" varStatus="count">
				&nbsp;&nbsp;&nbsp;
				<c:choose>
				<c:when test="${m.size==count }">
				└
				</c:when>
				<c:otherwise>
				├
				</c:otherwise>
				</c:choose>
				
				
				<input type="checkbox" name="manager"
						value="${m.eId }"> ${m.name }<br>
				</c:forEach>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${sessionScope.gList!=null}">
				<input type="checkbox" onclick="managerAllClick(manager)">관리부<br>
				<c:forEach items="${sessionScope.gList }" var="m">
				&nbsp;&nbsp;&nbsp;├<input type="checkbox" name="manager"
						value="${m.eId }"> ${m.name }<br>
				</c:forEach>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${sessionScope.gsList!=null}">
				<input type="checkbox" onclick="managerAllClick(manager)">교육부<br>
				<c:forEach items="${sessionScope.gsList }" var="m">
				&nbsp;&nbsp;&nbsp;├<input type="checkbox" name="manager"
						value="${m.eId }"> ${m.name }<br>
				</c:forEach>
			</c:when>
		</c:choose>

	</form>
	<input type="button" onclick="closeFunction()" value="닫기">
</body>
</html>