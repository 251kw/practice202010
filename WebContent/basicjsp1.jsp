<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSPの基本</title>
</head>
	<body>
		<h3>JSPの基本的なタグ</h3>
		<%-- JSPのコメント --%>
		<%!
			//変数宣言
			String message = "Hello JSP World";
		%>
		<p>データの出力</p>

		<%= message %><br>
	</body>
</html>
