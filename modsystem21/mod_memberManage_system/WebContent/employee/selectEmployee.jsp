<%@page import="java.util.ArrayList"%>
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
		var manager = document.eForm.manager;
		var tf;
		if(mCheck){
			tf = true;
		}else{
			tf = false;
		}
			for(i=0;i<manager.length;i++)
				manager[i].checked = tf;
	}
	function gAllClick() {
		var mCheck = document.eForm.gCheck.checked;
		var g = document.eForm.g;
		var tf;
		if(mCheck){
			tf = true;
		}else{
			tf = false;
		}
		for(i=0;i<g.length;i++)
			g[i].checked = tf;
	}
	function gsAllClick() {
		var mCheck = document.eForm.gsCheck.checked;
		var gs = document.eForm.gs;
		var tf;
		if(mCheck){
			tf = true;
		}else{
			tf = false;
		}
		for(i=0;i<gs.length;i++)
			gs[i].checked = tf;
	}

	function closeFunction() {
		var gs = document.eForm.gs;
		var g = document.eForm.g;
		var manager = document.eForm.manager;
		
		for(i=0;i<gs.length;i++){
			if(gs[i].checked){
				if(email.length==0)				
					email += gs[i].value;
				else
					email += "," + gs[i].value;
				
				
			}
			
		}
		
		for(i=0;i<g.length;i++){
			if(g[i].checked){
				if(email.length==0)				
					email += g[i].value;
				else
					email += ","+g[i].value;
				
			}
			
		}
		for(i=0;i<manager.length;i++){
			if(manager[i].checked){
				if(email.length == 0){
					email += manager[i].value;	
				}else{
					email += "," + manager[i].value;
					
				}
				
				
			}
			
		}
		
		
		opener.insert.manager.value = email;
		window.close();
	}
	function openSize() {
		window.width = 100;
		window.height = 100;
	}
</script>
</head>
<body>
	<form action="" name="eForm">
		<c:choose>
			<c:when test="${sessionScope.mList!=null}">
				<input type="checkbox" onclick="managerAllClick(manager)" name="mCheck">사업부<br>
				<c:forEach items="${sessionScope.mList }" var="m" varStatus="vs">
				&nbsp;&nbsp;&nbsp;
				<c:choose>
				<c:when test="${vs.count < sessionScope.mCount}">
				├
				</c:when>
				<c:otherwise>
				└
				</c:otherwise>
				</c:choose>
				
				<input type="checkbox" name="manager" id="eList"
						value="${m.eId }"> ${m.name }<br>
				</c:forEach>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${sessionScope.gList!=null}">
				<input type="checkbox" onclick="gAllClick()" name="gCheck">관리부<br>
				<c:forEach items="${sessionScope.gList }" var="m" varStatus="vs">
				&nbsp;&nbsp;&nbsp;
				<c:choose>
				<c:when test="${vs.count < sessionScope.gCount}">
				├
				</c:when>
				<c:otherwise>
				└
				</c:otherwise>
				</c:choose>
				<input type="checkbox" name="g" id="eList"
						value="${m.eId }"> ${m.name }<br>
				
				</c:forEach>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${sessionScope.gsList!=null}">
				<input type="checkbox" onclick="gsAllClick()" name="gsCheck">교육부<br>
				<c:forEach items="${sessionScope.gsList }" var="m" varStatus="vs">
				&nbsp;&nbsp;&nbsp;
				<c:choose>
				<c:when test="${vs.count < sessionScope.gsCount}">
				├
				</c:when>
				<c:otherwise>
				└
				</c:otherwise>
				</c:choose>
				<input type="checkbox" name="gs" id="eList"
						value="${m.eId }"> ${m.name }<br>
				
				</c:forEach>
			</c:when>
		</c:choose>

	</form>
	<input type="button" onclick="closeFunction()" value="닫기">
</body>
</html>