<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<link rel="stylesheet" type="text/css" href="/common.css" /> 
	<style> 
		form { width: 600px; margin: auto; 
			box-shadow: 0 0 4px lightgray, 2px 2px 4px gray; overflow: auto; } 
		div.title { font-size: 20pt; padding: 10px; background-color: #eee; } 
		table { margin: 20px; } 
		td { min-width: 100; padding: 5px; } 
		td:nth-child(1) { text-align: right; }
		button { margin: 5px 0 20px 20px; }
	</style> 
</head> 
<body> 
	<div class="container"> 
	<form method="post" action="join">
		<div class="title">user 정보</div> 
			<table> 
				<tr>
					<td>id</td> 
					<td><input type="text" value="${ user.id }" readonly disabled /></td> 
				</tr> 
				<tr> 
					<td>user id</td> 
					<td><input type="text" name="userid" value="${ user.userid }" /></td>
				</tr> 
				<tr> 
					<td>pwd</td> 
					<td><input type="password" name="pwd" value="${ user.pwd }" /></td>
				</tr>
				<tr> 
					<td>이름</td> 
					<td><input type="text" name="name" value="${ user.name }" /></td>
				</tr>
			</table>
		<button type="submit" class="btn" onclick="location.href='login'">저장</button>
		
		<c:if test="${ not empty message }"> 
			<div class="message"> 
				${ message } 
			</div> 
		</c:if>
		</form>
	</div> 
</body> 
</html>