<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/searchinn/SalesServlet" method="get">
		<input type="month" name="term">
		<input type="submit" value="決定">
	</form>
	<div>
		<div>
			<table class="hotelSales">
				<tr>
					<th>エリアID</th>
					<th>エリア名</th>
					<th>ホテルID</th>
					<th>ホテル名</th>
					<th>売上</th>
				</tr>
				<c:forEach var="salesInfo" items="${hotelSales}">
					<tr>
						<td>${salesInfo.areaId}</td>
						<td>${salesInfo.areaName}</td>
						<td>${salesInfo.hotelId}</td>
						<td>${salesInfo.hotelName}</td>
						<td>${salesInfo.sales}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<table class="areaSales">
				<tr>
					<th>エリアID</th>
					<th>エリア名</th>
					<th>売上</th>
				</tr>
				<c:forEach var="salesInfo" items="${areaSales}">
					<tr>
						<td>${salesInfo.areaId}</td>
						<td>${salesInfo.areaName}</td>
						<td>${salesInfo.sales}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<table class="totalSales">
				<tr>
					<th>売上</th>
				</tr>
				<c:forEach var="salesInfo" items="${totalSales}">
					<tr>
						<td>${salesInfo.sales}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>