<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
	$(function() {
		
	});
</script>
</head>
<body>
	<div class="container">
		<h2>스프링 시큐리티 Step2</h2>
		<h3>해당 페이지에 대한 권한이 없는 경우 자동로케이션 되는 페이지입니다.</h3>
		<h4>내파일명 : accessDenied.jsp</h4>
		<jsp:include page="/resources/common_link.jsp"></jsp:include>
	</div>
</body>
</html>