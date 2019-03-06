<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/daolist.do" var="daol" />
   <form action ="${daol}" method ="post">  
	<table>
		<thead>
			
		</thead>
		<tbody>
		<c:forEach var="i" items="${list}">
		<tr style="border: 1px solid black;">
				<td>NO.</td>
				<td>이름</td>
				<td>나이</td>
			</tr>
			<tr style="border: 1px solid black;">
				<td>${i.S_NUM}</td>
				<td>${i.S_NAME}</td>
				<td>${i.S_AGE}</td>
			</tr>
			</c:forEach>
		</tbody>
		
	</table>
	</form>
</body>
</html>