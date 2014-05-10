<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/all.css">
<script type="text/javascript">
var xhr;

function createXMLHttpRequest() {
	if (window.ActiveXObject) {
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		xhr = new XMLHttpRequest();

	}
	return xhr;
}

function startRequest() {
	var id = document.getElementById("id").value;
	var pass = document.getElementById("pass").value;
	xhr = createXMLHttpRequest();
	xhr.onreadystatechange = callback;
	xhr.open("post", "Dispatcher?command=login&id=" + id + "&pass="+pass, true);
	xhr.send(null);
}
function callback() {
	if (xhr.readyState == 4) {// 응답 완료 4 
		if (xhr.status == 200) {// 정상 응답받은 상태  
			var str = xhr.responseText;
			alert(str);
			if(str == 1){
				alert("로그인 실패 ID/Password를 확인하세요");
				document.getElementById("id").value = "";
				document.getElementById("pass").value = "";
			}else{
				window.location = "member/memberManage.jsp";
			}
		}
	}
}
function enterPress(e) {
	if(e.keyCode==13)
		startRequest();
	
}

</script>

</head>
<body>
<c:choose>
	<c:when test="${sessionScope.vo==null}">
	<form action="Dispatcher">
	<div class="index" align="center">MOD 회원관리 시스템<br>
		<table>
		<tr>
			<td>
				아이디
			</td>
			<td>
				<input type="text" name="id" id="id">
			</td>
		</tr>
		<tr>
			<td>
				비밀번호
			</td>
			<td>
				<input type="password" name="pass" id="pass" onkeydown="enterPress(event)">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><a href="member/insertMember.html"><input type="button" value="회원가입"></a><input type="button" value="로그인" onclick="startRequest()" ></td>
		</tr>
		</table>	
	</div>
	</form>
	</c:when>
	<c:otherwise>
	<script type="text/javascript">
	window.location = "member/memberManage.jsp";
	</script>
	</c:otherwise>
</c:choose>
</body>
</html>