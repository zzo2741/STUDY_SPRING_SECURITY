<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<!--
	Spring Security 사용절차
	1. 의존설정(pom.xml)
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-web</artifactId>
			<version>4.2.1.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-config</artifactId>
			<version>4.2.1.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-taglibs</artifactId>
			<version>4.2.1.RELEASE</version>
		</dependency>
	
	2. web.xml에서 Security 설정파일의 위치를 추가
		<context-param>
			<param-name>contextConfigLocation</param-name>
			<param-value>
				/WEB-INF/spring/root-context.xml
				/WEB-INF/spring/security-context1.xml <== 여기를 추가한다.
			</param-value>
		</context-param>
		
	3. 2번에서 설정한 위치에 스프링 시큐리티 설정파일을 생성한다.
		- 파일 생성시 security namespaces를 추가한다.
		- 만약 생성 후 할 때는 하단의 탭을 활용한다.
		- intercept-url과 같은 관련 속성은 해당 파일 참조
	
	4. web.xml에서 시큐리티를 웹어플리케이션에 적용하기 위한 필터설정
		<filter>
			<filter-name>springSecurityFilterChain</filter-name>
			<filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
		</filter>
		<filter-mapping>
			<filter-name>springSecurityFilterChain</filter-name>
			<url-pattern>/*</url-pattern>
		</filter-mapping>
	
	※ DB연동을 하지 않는다면 4번까지의 과정으로 시큐리티 사용이 가능함.
	
	5. 관리자정보 JDBC연동 및 화면 커스텀
		2단계, 3단계를 통해 진행.
		security-context2.xml 파일 참조
	-->
	<h1>Spring Security 사용1 - Default 페이지 사용</h1>
	<ul>
		<li>
			<a href="./security1-1/index.do" target="_blank"> Step1 페이지 바로가기 (인증 필요) </a>
		</li>
		<li>
			<a href="./security1-2/access.do" target="_blank"> Step1 페이지 바로가기 (인증 불필요) </a>
		</li>
	</ul>

	<h2>Spring Security - Step2(커스텀 페이지 사용하기)</h2>
	<ul>
		<li>
			<a href="./security2/index.do" target="_blank"> Step2 index 페이지 바로가기 </a>
		</li>
		<li>
			<a href="./security2/login.do" target="_blank"> Step2 login 페이지 바로가기 </a>
		</li>
		<li>
			<a href="./security2/admin/main.do" target="_blank"> Step2 관리자영역 바로가기 </a>
		</li>
		<li>
			<a href="./security2/accessDenied.do" target="_blank"> Step2 접근불가안내페이지 </a>
		</li>
	</ul>

	<h2>Spring Security 사용시 주의사항</h2>
	<ul>
		<li>
			<a href="./security3/form.do">Form페이지 바로가기 </a>
		</li>
	</ul>
</body>
</html>
