package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBManager;
import dto.UserDTO;

@WebServlet("/UserInfoInput")
public class UserInfoInput extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");

	String loginId = request.getParameter("loginId");
	String password = request.getParameter("password");
	String username = request.getParameter("username");
	String icon = request.getParameter("icon");
	String profile = request.getParameter("profile");

	RequestDispatcher dispatcher = null;

	if (loginId.equals("") || password.equals("")) {	//
		// UserInfoConfirm.jsp に処理を転送
		dispatcher = request.getRequestDispatcher("UserInfoInput.jsp");
		dispatcher.forward(request, response);
	} else {
		// ログイン認証を行い、ユーザ情報を取得
		DBManager dbm = new DBManager();
		UserDTO user = dbm.getRegistUser(loginId, password, username, icon, profile); //

		request.setAttribute("user", user);
		dispatcher = request.getRequestDispatcher("UserInfoConfirm.jsp");

		// 処理を転送
			dispatcher.forward(request, response);
		}
	}
}
