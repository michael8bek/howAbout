<%@page import="howAbout.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet"
   href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- 절대경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"
   scope="application"></c:set>
<c:set value="${path}" var="path" scope="application" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS link-->
<link href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link href="${path}/resources/css/modern-business.css" rel="stylesheet">
<style type="text/css">
.err {
   color: red;
}
</style>
<script src="${path}/resources/js/jquery.js"></script>

<!-- Bootstrap core CSS -->
<script src="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"></script>
<!-- Custom styles for this template -->
<script src="${path}/resources/css/modern-business.css"></script>

<title>How about</title>
<script type="text/javascript">

</script>
</head>
<body>
         <form class="form-inline" action="search.do" method="post">
         </form>
</body>
</html>
