<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/common.js"></script>
    <link rel="stylesheet" type="text/css" href="/common.css"/>
    <style>
        a.btn {
            float: right;
            margin: -20px 0 5px 0;
        }

        td:nth-child(1) {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Address 목록</h1>
    <form method="post" action="addresslist">
        <table class="list">
            <thead>
            <tr>
                <th>id</th>
                <th>latitude</th>
                <th>longitude</th>
                <th>addressName</th>
                <th>placeName</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="address" items="${ address }">
                <tr data-url="edit?id=${ address.id }">
                    <td>${ address.id }</td>
                    <td>${ address.latitude }</td>
                    <td>${ address.longitude }</td>
                    <td>${ address.addressName }</td>
                    <td>${ address.placeName }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>