<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html> 
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
	<script src="/common.js"></script> 
	<link rel="stylesheet" type="text/css" href="/common.css" />
	<style> 
		a.btn { float: right; margin: -20px 0 5px 0; } 
		td:nth-child(1) { text-align: center; } 
	</style> 
</head> 
<body> 
	<div class="container"> 
	<h1>user목록</h1> 
	<a href="join" class="btn">회원가입</a>
	<table class="list"> 
		<thead> 
			<tr> 
				<th>id</th> 
				<th>userid</th> 
				<th>name</th> 
			</tr> 
		</thead> 
		<tbody> 
			<c:forEach var="user" items="${ user }"> 
				<tr data-url="edit?id=${ user.id }"> 
					<td>${ user.id }</td> 
					<td>${ user.userid }</td> 
					<td>${ user.name }</td>
				</tr>
			</c:forEach> 
		</tbody> 
	</table> 
	</div> 
</body> 
</html>