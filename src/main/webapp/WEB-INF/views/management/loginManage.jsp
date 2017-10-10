<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HowAbout Manager</title>
<!-- 절대경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application"></c:set>
<c:set value="${path}" var="path" scope="application" />
<!-- Bootstrap core CSS-->
<link href="${path}/resources/sbAdmin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="${path}/resources/sbAdmin/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="${path}/resources/sbAdmin/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${path}/resources/sbAdmin/css/sb-admin.css" rel="stylesheet">
</head>


<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="indexManage.do">Login</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.do">Register an Account</a>
          <a class="d-block small" href="forgot-password.do">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="${path}/resources/sbAdmin/vendor/jquery/jquery.min.js"></script>
  <script src="${path}/resources/sbAdmin/vendor/popper/popper.min.js"></script>
  <script src="${path}/resources/sbAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${path}/resources/sbAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>