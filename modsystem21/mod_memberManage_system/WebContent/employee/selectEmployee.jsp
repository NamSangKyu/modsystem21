<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var mList = "";
	function closeFunction() {
		opener.insert.manager.value = mList;
		window.close();
	}
	
</script>
</head>
<body>
<c:forEach items="${sessionScope.mList }" var="m"> 
	<input type="checkbox" value="${m.eId }"> ${m.name }<br> 
</c:forEach>


<input type="button" onclick="closeFunction()" value = "닫기">
</body>
</html>