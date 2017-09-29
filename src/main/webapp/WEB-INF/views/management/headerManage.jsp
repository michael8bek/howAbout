<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로 -->
<c:set var="path" value="${pageContext.request.contextPath }" scope="application"></c:set>
<c:set value="${path}" var="path" scope="application"/> 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>HOW ABOUT</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="${path}/resources/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="${path}/resources/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="${path}/resources/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="${path}/resources/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${path}/resources/assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body></body>
</html>