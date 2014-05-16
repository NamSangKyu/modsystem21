<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 페이지</title>
<script type="text/javascript">
	function selectManager() {
		window.open("../Dispatcher?command=selectEmail", "해당 매니저 선택창", "menu=no, toolbar=no, width=200, height=400");		
	}
	function cancelPage() {
		history.back();
	}
</script>
</head>
<body>
	<form name="insert" action="../Dispatcher">
		<input type="hidden" name="command" value="insertContent">
		<input type="hidden" name="writer" value="${sessionScope.vo.eId}">
		<table align="center" width="100%">
			<tr align="center">
				<td>구분
					<select name="section" style="width: 100%;text-align: center;">
						<option value="0">-전체-</option>
						<option value="1">문제학생</option>
						<option value="2">강의관련</option>
						<option value="3">기타사항</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>제목<input type="text" name="title" style="width: 100%"></td>
			</tr>
			<tr align="center">
				<td>작성자<input type="text" value="${sessionScope.vo.name}" readonly="readonly" style="width: 100%"></td>
			</tr>
			<tr align="center">
				<td>담당자<input type="text" name="manager" readonly="readonly" onclick="selectManager()" style="width: 100%"></td>
			</tr>
			<tr align="center">
				<td colspan="2">내용</td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<textarea name="content" style="width:100%;overflow-x:hidden;overflow-y: auto; resize:none; "></textarea>				
				</td>
			</tr>
			<tr>
			<td>
				<input type="submit" value="작성완료" style="width: 100%"><input type="button" value="작성취소" onclick="cancelPage()" style="width: 100%">			
			</td>
			</tr>
		</table>
	</form>
</body>
</html>