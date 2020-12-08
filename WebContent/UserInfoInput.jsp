<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>ユーザー登録入力画面</title>
<link rel="stylesheet" href="./css/skyblue.css">
<link rel="stylesheet" href="./css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="./css/helper.css">
</head>
<body>
	<div class="bg-success padding-y-5">
		<div class="container padding-y-5 text-center">
			<h1>
				ユーザー登録入力画面
			</h1>
		</div>
	</div>
	<div class="padding-y-5 text-center">
		<div style="width: 40%" class="container padding-y-5 text-left">
			<strong class="color-main">ログインユーザー情報</strong>
		</div>
	</div>
	<%-- セッションスコープにある UserDTO 型のオブジェクトを参照 --%>
	<div class="padding-y-5">
		<div style="width: 40%" class="container padding-y-5">
			<%-- action 属性にサーブレットを指定 --%>
			<form action="UserInfoInput" method="post">
				<table style="width: 400px" class="table">
					<tr>
						<td class="color-main text-left">ログインID</td>
						<td class="text-left"><input class="form-control" type="text"
							name="loginId" value="" size="20" /></td>
					</tr>
					<tr>
						<td class="color-main text-left">ユーザー名</td>
						<td class="text-left"><input class="form-control" type="text"
							name="username" value="" size="20" /></td>
					</tr>
					<tr>
						<td class="color-main text-left">パスワードID</td>
						<td class="text-left"><input class="form-control" type="password"
							name="password" value="" size="20" /></td>
					</tr>
					<tr>
						<td class="color-main text-left">アイコン</td>
						<td colspan="2" class="text-center">
						<input type="checkbox"><span class="icon-speaker pe-3x pe-va"></span>
						<input type="checkbox"><span class="icon-bell pe-3x pe-va"></span></td>
					</tr>
					<tr>
						<td class="color-main text-left">プロフィール</td>
						<td class="text-left"><input class="form-control" type="text"
							name="profile" value="" size="20" /></td>
					</tr>
					<tr>
						<td colspan="2" class="text-right"><input class="btn" type="submit" value="登録" />
						<td colspan="2" class="text-right"><input class="btn" type="button" onclick="history.back()" value="戻る" />
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
