<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2</title>
</head>
<body>
	<h1>${name }</h1><br>
	
	fn 태그 ${fn:length(list) }
	<c:choose>
		<c:when test="${fn:length(list) gt 0 }">
			<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
				<th>읽음</th>
			</tr>
			<c:forEach items="${list }" var="row">
			<tr>
				<td>${row.bno }</td>
				<td>${row.btitle }</td>
				<td>${row.bwrite }</td>
				<td>${row.bdate }</td>
				<td>${row.blike }</td>
			</tr>
			</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			출력할 데이터가 없습니다.<br>
			관리자에게 문의하세요.
		</c:otherwise>
	</c:choose>
</body>
</html>