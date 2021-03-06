<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/searchinn/css/registerGuestForm.css">
<link rel="stylesheet" type="text/css" href="/searchinn/css/include.css">
<script type="text/javascript" src="/searchinn/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="/searchinn/js/control.js"></script>
<title>会員情報入力</title>
</head>
<body>

<jsp:include page="/include/header.jsp"/>
	<div class="main">
		<h2>会員情報登録</h2>
		<div class="container">

			<div class="box">
				<form action="/searchinn/RegisterGuestServlet"method="post">

					<table>

						<tr>
							<th>お名前</th><!--ここに警告文が挿入-->
							<td class ="left"><input type="text" size="30" name="guestName"></td>
							<td><div class="add" id="add1">	</div></td>
						</tr>

						<tr>
							<th>カナ</th>
							<td class ="left"><input type="text" size="30" name="guestKana"></td>
							<td><div class="add" id="add2" ></div></td>
						</tr>

						<tr>
							<th>パスワード</th>
							<td class="left"><input type="password" name="guestPass"></td>
							<td><div class="add" id="add3"></div></td>
						</tr>

						<tr>
		        		<th></th>
		        		<td>
							<small class ="left">※パスワードは半角英数字8-16文字</small>
		        		</td>
		        		<td></td>
		        		</tr>

						<tr>
							<th>生年月日</th>
							<td class="left"><input type="text" name="guestBirthday"></td>
							<td><div class="add" id="add4"></div></td>
						</tr>


						<tr>
		        		<th></th>
		        		<td>
							<small class ="left">(入力形式:2018-06-03)</small>
		        		</td>
		        		<td>
		        		</td>
		        		</tr>




						<tr>
							<th>電話番号</th>
							<td class="left"><input type="tel" name="guestTel"></td>
							<td><div class="add" id="add5"></div></td>
						</tr>

						<tr>
							<th>メールアドレス</th>
							<td><input type="email" size="50"name="guestMail"></td>
							<td><div class="add" id="add6"></div></td>
						</tr>

						<tr>
							<th>ご自宅住所</th>
							<td><input type="text" size="50" name="guestAddress"></td>
							<td><div class="add" id="add7"></div></td>
						</tr>

					</table>

					<p>
						<input type="submit" value="確認">
						<button name="action" value="clear" type="button" class="clear-button">クリア</button>
					</p>

				</form>

			</div><!--box Fin-->
		</div><!--container Fin-->

		<div class="errmsg">
			<c:if test="${not empty errmsg}">
		 		<c:out value="${errmsg}"></c:out>
		 	</c:if>
		</div>

	</div><!--main Fin-->

	<p>
		<a class="center1" href="/searchinn">TOPへ戻る</a>
	</p>

<jsp:include page="/include/footer.jsp"/>
</body>

</html>