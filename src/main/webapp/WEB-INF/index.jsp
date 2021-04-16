<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>
<body>
    <div class="row m-4">
    	<div class="col">
		    <h1>Registration</h1>		    
		    <form:form class="form-group" method="POST" action="/registration" modelAttribute="user">
		        <div class="mb-3">
		            <form:label path="firstName" class="form-label">First Name:</form:label>
		            <form:input type="text" path="firstName" class="form-control"/>
		            <form:errors class="text-sm-start fw-light text-danger" path="firstName"/>
		        </div>
		        <div class="mb-3">
		            <form:label path="lastName" class="form-label">Last Name:</form:label>
		            <form:input type="text" path="lastName" class="form-control"/>
		            <form:errors class="text-sm-start fw-light text-danger" path="lastName"/>
		        </div>
		        <div class="mb-3">
		            <form:label path="email" class="form-label">Email:</form:label>
		            <form:input type="email" path="email" class="form-control"/>
		            <form:errors class="text-sm-start fw-light text-danger" path="email"/>
		        </div>
		        <div class="mb-3">
		            <form:label path="password" class="form-label">Password:</form:label>
		            <form:password path="password" class="form-control"/>
		            <form:errors class="text-sm-start fw-light text-danger" path="password"/>
		        </div>
		        <div class="mb-3">
		            <form:label path="passwordConfirmation" class="form-label">Password Confirmation:</form:label>
		            <form:password path="passwordConfirmation" class="form-control"/>
		            <form:errors class="text-sm-start fw-light text-danger" path="passwordConfirmation"/>
		        </div>
		        <div class="mb-3 d-flex justify-content-end">
		        	<input class="btn btn-info" type="submit" value="Register"/>
		        </div>
		    </form:form>
		</div>
    </div>
</body>
</html>