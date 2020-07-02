<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<h3>로그인 화면</h3>
		<h4>누구나 권한없이 접근가능</h4>
		<c:choose>
			<c:when test="${not empty user_id }">
				${user_id }님, 하이룽~*^^*
				<form:form method="post" action="${pageContext.request.contextPath }/security2/logout">
					<input type="submit" value="로그아웃" />
				</form:form>
			</c:when>
			<c:otherwise>
				<c:url value="/loginAction" var="loginUrl"></c:url>
				<form:form name="loginFrm" action="${loginUrl }" method="post">
					<c:if test="${param.error != null }">
						<p>아이디와 패스워드가 잘못되었습니다.</p>
					</c:if>
					<c:if test="${param.login != null }">
						<p>로그아웃 하였습니다.</p>
					</c:if>
					<!--
						security-context2.xml에서 security:form-login 항목에 설정한 이름을 아래 name속성에 사용해야 한다.
					-->
					<p>
						아이디 :
						<input type="text" name="id" value="kosmo_" />
					</p>
					<p>
						패스워드 :
						<input type="password" name="pass" />
					</p>
					<button type="submit" class="btn btn-danger">로그인하기</button>
				</form:form>
			</c:otherwise>
		</c:choose>
		<jsp:include page="/resources/common_link.jsp"></jsp:include>
	</div>
</body>
</html>