<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--

□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■■□□
□■□□□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□□□□□□□□□□□■□□□
□■□□□□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□□□□□□□□□□□■□□□
□■□□□□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□□□□□□□□□□□■□□□
□■□□□□■□□■■■□■■□□□□□■■■□□□□□□■■■■■□□□□■■■□□□□□□■■■□■□□■■■■■■□□□□□■■■□□□□□□■■■■□□□
□■□□□□■□□□□■■□□■□□□■□□□■□□□□□□□□□■□□□■□□□■□□□□■□□□■■□□□□■□□□□□□□■□□□■□□□□■□□□■□□□
□■□□□■□□□□□■□□□■□□■□□□□□■□□□□□□□□■□□■□□□□□■□□■□□□□□■□□□□■□□□□□□■□□□□□■□□■□□□□■□□□
□■■■■□□□□□□■□□□□□□■□□□□□■□□□□□□□□■□□■■■■■■■□□■□□□□□□□□□□■□□□□□□■■■■■■■□□■□□□□■□□□
□■□□□□□□□□□■□□□□□□■□□□□□■□□□□□□□□■□□■□□□□□□□□■□□□□□□□□□□■□□□□□□■□□□□□□□□■□□□□■□□□
□■□□□□□□□□□■□□□□□□■□□□□□■□□□□□□□□■□□■□□□□□□□□■□□□□□□□□□□■□□□□□□■□□□□□□□□■□□□□■□□□
□■□□□□□□□□□■□□□□□□■□□□□□■□□□□□□□□■□□■□□□□□■□□■□□□□□■□□□□■□□□■□□■□□□□□■□□■□□□□■□□□
□■□□□□□□□□□■□□□□□□□■□□□■□□□■□□□□□■□□□■□□□□■□□□■□□□□■□□□□■□□□■□□□■□□□□■□□□■□□□■□□□
■■■■□□□□□■■■■■■□□□□□■■■□□□□■□□□□□■□□□□■■■■□□□□□■■■■□□□□□□■■■□□□□□■■■■□□□□□■■■■■□□
□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
□□□□□□□□□□□□□□□□□□
■■□□□□□□□□□□□□□□□□
□■□□□□□□□□□□□□□□□□
□■□□□□□□□□□□□□□□□□
□■□□□□□□□□□□□□□□□□
□■■■■□□□□■■■□□■■■□
□■□□□■□□□□■□□□□■□□
□■□□□□■□□□□■□□□■□□
□■□□□□■□□□□■□□■□□□
□■□□□□■□□□□□■□■□□□
□■□□□□■□□□□□□■□□□□
□■□□□□■□□□□□□■□□□□
□■□□□■□□□□□□■□□□□□
□■■■■□□□□■□□■□□□□□
□□□□□□□□□■□■□□□□□□
□□□□□□□□□□■□□□□□□□
□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
□□■■□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■■□□□□□□□■■■■■■■□□■□□□□■■■□■□□□□■■■□
□■□□■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□■□□□□□■■□□□□■□□■■□□□□■□□
■□□□□■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□■□□□□□■□■□□□■□□■□■□□□■□□
■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□■□□□□□□□□□□■□□□□□■□■□□□■□□■□■□□□■□□
■□□□□□□□□□□■■■□□□□□□■■■■□□□■■■□■■□□□□□■■■□■□□□■□■■■□□□□□□■□□□□□■□■□□□■□□■□■□□□■□□
□■■□□□□□□□■□□□■□□□□■□□□□■□□□□■■□□■□□□■□□□■■□□□■■□□□■□□□□□■□□□□□■□□■□□■□□■□□■□□■□□
□□□■■□□□□■□□□□□■□□□□□□□□■□□□□■□□□■□□■□□□□□■□□□■□□□□■□□□□□■□□□□□■□□■□□■□□■□□■□□■□□
□□□□□■□□□■■■■■■■□□□□■■■■■□□□□■□□□□□□■□□□□□□□□□■□□□□■□□□□□■□□□□□■□□■□□■□□■□□■□□■□□
■□□□□□■□□■□□□□□□□□□■□□□□■□□□□■□□□□□□■□□□□□□□□□■□□□□■□□□□□■□□□□□■□□□■□■□□■□□□■□■□□
■□□□□□■□□■□□□□□□□□■□□□□□■□□□□■□□□□□□■□□□□□□□□□■□□□□■□□□□□■□□□□□■□□□■□■□□■□□□■□■□□
■□□□□□■□□■□□□□□■□□■□□□□□■□□□□■□□□□□□■□□□□□■□□□■□□□□■□□□□□■□□□□□■□□□■□■□□■□□□■□■□□
■■□□□■□□□□■□□□□■□□■□□□□■■□□□□■□□□□□□□■□□□□■□□□■□□□□■□□□□□■□□□□□■□□□□■■□□■□□□□■■□□
■□■■■□□□□□□■■■■□□□□■■■■□■■□■■■■■■□□□□□■■■■□□□■■■□□■■■□■■■■■■■□□■■□□□□■□□■■□□□□■□□
□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□

-->

<link rel="stylesheet" type="text/css" href="/searchinn/css/indexStyle.css" >
<link rel="stylesheet" type="text/css" href="/searchinn/css/headerStyle.css" >
<link rel="stylesheet" type="text/css" href="/searchinn/css/footerStyle.css" >

<title>BOOKINN</title>

</head>

<body>

	<jsp:include page="/include/header.jsp"/>

	<div class="title">
		<h1><a href="#">BOOKINN.com</a></h1>
		<h3 id="hoge">世界最小級のホテル予約サイト</h3><br>
		<h3 id="hoge">ホテル予約ならBOOKINN.com</h3><br>
	</div>

	<br>
	<div id="main">

	<h4 class="siro">ご予約の流れ</h4><span class="spanao">→</span>
	<h4 class="ao">エリア/ホテル選択</h4><span class="spanao">→</span>
	<h4 class="ao">プラン選択</h4><span class="spanao">→</span>
	<h4 class="ao">予約情報入力</h4><span class="spanao">→</span>
	<h4 class="ao">会員登録</h4><span class="spanao">→</span>
	<h4 class="ao">入力確認</h4><span class="spanao">→</span>
	<h4 class="siro">予約確定</h4>
	</div>

	<jsp:include page="/include/footer.jsp"/>


</body>
</html>