<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	<c:url value="/daotest.do" var="daot" />
	<a href="${daot}">입력</a>

	<c:url value="/list.do" var="iform" />
	<a href="${iform}">리스트</a>
</body>
</html>
