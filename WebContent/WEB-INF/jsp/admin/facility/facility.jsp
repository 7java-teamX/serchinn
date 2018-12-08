<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>BOOKINN | 管理者・施設管理</title>
</head>
<body>
	<h2>施設管理</h2>
	<div>
		<h3>エリア</h3>
		<table>
			<tr>
				<th>ID</th>
				<th>名前</th>
			</tr>
			<c:forEach var="area" items="${areaAll}">
				<tr>
					<td><c:out value="${area.areaId}" /></td>
					<td><c:out value="${area.areaName}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<h3>ホテル</h3>
		<table>
			<tr>
				<th>エリアID</th>
				<th>ホテルID</th>
				<th>名前</th>
				<th>住所</th>
				<th>TEL</th>
				<th>MAIL</th>
				<th>image</th>
				<th>詳細</th>
			</tr>
			<c:forEach var="hotel" items="${hotelAll}">
				<tr>
					<td><c:out value="${hotel.areaId}" /></td>
					<td><c:out value="${hotel.hotelId}" /></td>
					<td><c:out value="${hotel.hotelName}" /></td>
					<td><c:out value="${hotel.hotelAddress}" /></td>
					<td><c:out value="${hotel.hotelTel}" /></td>
					<td><c:out value="${hotel.hotelMail}" /></td>
					<td><c:out value="${hotel.hotelImage}" /></td>
					<td><c:out value="${hotel.hotelDetail}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<h3>部屋タイプ</h3>
		<table>
			<tr>
				<th>ID</th>
				<th>名前</th>
				<th>大人キャパ</th>
				<th>小人キャパ</th>
				<th>大人料金</th>
				<th>小人料金</th>
				<th></th>
			</tr>
			<c:forEach var="roomType" items="${roomTypeAll}" varStatus="status">
				<tr>
					<td><c:out value="${roomType.roomTypeId}" /></td>
					<td><c:out value="${roomType.roomTypeName}" /></td>
					<td><c:out value="${roomType.adultCapacity}" /></td>
					<td><c:out value="${roomType.childCapacity}" /></td>
					<td><c:out value="${roomType.adultCharge}" /></td>
					<td><c:out value="${roomType.childCharge}" /></td>
					<td><a href="/searchinn/FacilityServlet?action=roomTypeEdit&index=${status.index}">編集</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="/searchinn/FacilityServlet?action=roomTypeAdd">部屋タイプ追加</a>
	</div>

	<div>
		<h3>プラン</h3>
		<table>
			<tr>
				<th>プランID</th>
				<th>名前</th>
				<th>ホテルID</th>
				<th>部屋タイプID</th>
				<th>部屋数</th>
				<th>image</th>
				<th>詳細</th>
				<th></th>
			</tr>
			<c:forEach var="plan" items="${planAll}" varStatus="status">
				<tr>
					<td><c:out value="${plan.planId}" /></td>
					<td><c:out value="${plan.planName}" /></td>
					<td><c:out value="${plan.hotelId}" /></td>
					<td><c:out value="${plan.roomTypeId}" /></td>
					<td><c:out value="${plan.numRoom}" /></td>
					<td><c:out value="${plan.planImage}" /></td>
					<td><c:out value="${plan.planDetail}" /></td>
					<td><a href="/searchinn/FacilityServlet?action=planEdit&index=${status.index}">編集</a></td>
				</tr>
			</c:forEach>
		</table>
<%--		<a href="/searchinn/FacilityServlet">プラン追加</a>	--%>
	</div>
<a href="/searchinn/AdminMenuServlet">管理者TOP</a>



</body>
</html>