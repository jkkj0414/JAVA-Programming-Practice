<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<c:url var="R" value="/" />
<!DOCTYPE html> 
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
	<script src="${R}common.js"></script> 
	<link rel="stylesheet" href="${R}common.css">
	
	<style> 
		form { width: 600px; margin: auto; 
			box-shadow: 0 0 4px lightgray, 2px 2px 4px gray; overflow: auto; } 
		div.title { font-size: 20pt; padding: 10px; background-color: #eee; } 
		table { margin: 20px; } 
		td { min-width: 100; padding: 5px; } 
		td:nth-child(1) { text-align: right; }
		button { margin: 5px 0 20px 20px; }
		div.message { border-radius: 10px; padding: 12px; margin: 10px; 
			background-color: #ffa; border: 1px solid #cc0; }
	</style> 
</head> 
<body> 
	<div class="container"> 
	<form:form method="post" modelAttribute="user"> 
		<div class="title">user 정보 ${ user.id > 0 ? "수정" : "등록" }</div>
			<table>
				<tr>
					<td>user id</td>
					<td><input type="text" name="userid" value="${ user.userid }" /></td>
				</tr>
				<tr>
					<td>pwd</td>
					<td><input type="password" name="pwd" value="${ user.pwd }" /></td>
				</tr>
			</table> 
		<hr/> 
		<div>
			<button type="submit" class="btn" onclick="location.href='map'">로 그 인</button>
			<button type="button" onclick="location.href='join'">회 원 가 입</button>
			<c:if test="${ user.id > 0 }">
			<a href="delete?id=${ user.id }" class="btn" data-confirm-delete>삭제</a> 
			</c:if> <a href="list" class="btn">목록으로</a>
		</div>
		</form:form>
	</div> 
</body> 
</html>