<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>ユーザー登録確認画面</title>
<link rel="stylesheet" href="./css/skyblue.css">
<link rel="stylesheet" href="./css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="./css/helper.css">
</head>
<body>
	<div class="bg-success padding-y-5">
		<div class="container padding-y-5 text-center">
			<h1>
				ユーザー登録確認画面
			</h1>
		</div>
	</div>
	<div class="padding-y-5 text-center">
		<div style="width: 40%" class="container padding-y-5 text-left">
			<strong class="color-main">ログインID,ユーザー名,パスワード,アイコン,プロフィールを確認してください</strong>
		</div>
	</div>
	<div class="padding-y-5 text-center">
		<div style="width: 40%" class="container padding-y-5 text-center">
			<%-- action 属性にサーブレットを指定 --%>
			<form action="UserInfoConfirm" method="post">
				<table style="width: 400px" class="table">
					<tr>
						<%-- ログインID 入力欄の名前は loginId --%>
						<td class="color-main text-left">ログインID</td>
						<td colspan="2" class="text-center">${user.loginId}</td>
					</tr>
					<tr>
						<%-- ユーザー名 入力欄の名前は username --%>
						<td class="color-main text-left">ユーザー名</td>
						<td colspan="2" class="text-center">${user.userName}</td>
					</tr>
					<tr>
						<%-- パスワード入力欄の名前は password --%>
						<td class="color-main text-left">パスワード</td>
						<td colspan="2" class="text-center">${user.password}</td>
					</tr>
					<tr>
						<%-- アイコン選択欄の名前は icon --%>
						<td class="color-main text-left">アイコン</td>
						<td colspan="2" class="text-center"><span class="${user.icon} pe-3x pe-va"></span></td>
					</tr>
					<tr>
						<%-- プロフィール入力欄の名前は profile --%>
						<td class="color-main text-left">プロフィール</td>
						<td colspan="2" class="text-center">${user.profile}</td>
					</tr>
					<tr>
						<td colspan="2" class="text-right"><input class="btn" type="submit" value="OK" /></td>
						<td colspan="2" class="text-right"><input class="btn" type="button" onclick="history.back()" value="キャンセル" />
					</tr>
					<tr>
						<th><input type="hidden" value="${user.loginId}" name="loginId">
							<input type="hidden" value="${user.userName}" name="userName">
							<input type="hidden" value="${user.password}" name="password">
							<input type="hidden" value="${user.icon}" name="icon">
							<input type="hidden" value="${user.profile}" name="profile">
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
