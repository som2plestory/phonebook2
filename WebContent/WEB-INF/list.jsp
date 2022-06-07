<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호부</h1>

	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
		<table border="1">
			<c:forEach items="${personList}" var="personVo" varStatus="status">
				<tr>
					<td>이름(name)</td>
					<td>${personVo.name}</td>
				</tr>
				<tr>
					<td>핸드폰(hp)</td>
					<td>${personVo.hp}</td>
				</tr>
				<tr>
					<td>회사(company)</td>
					<td>${personVo.company}</td>
				</tr>
				<tr>
					<td><a href="./pbc?action=updateForm&id=${personVo.personId}">[수정폼]</a></td>
					<td><a href="./pbc?action=delete&id=${personVo.personId}">[삭제]</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	
	<a href="./pbc?action=writeForm">추가번호 등록</a>
	
</body>
</html>