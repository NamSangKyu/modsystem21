<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 페이지</title>
<script type="text/javascript">
	function selectManager() {
		window.open("../Dispatcher?command=selectEmail", "해당 매니저 선택창", "menu=no, toolbar=no", "width=360,height=240,top=200,left=300");		
	}
</script>
</head>
<body>
	<form name="insert" action="Dispatcher">
		<input type="hidden" name="command" value="insertContent">
		<table align="center">
			<tr>
				<td>제목</td><td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>작성자</td><td><input type="text" name="writer" value="${sessionScope.vo.name}"></td>
			</tr>
			<tr>
				<td>담당자</td><td><input type="text" name="manager" readonly="readonly"><input type="button" value="담당자 선택" onclick="selectManager()"></td>
			</tr>
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea rows="20" cols="29" style="overflow-x:hidden;overflow-y: auto; resize:none; "></textarea>				
				</td>
			</tr>
		</table>
	
	</form>
</body>
</html>