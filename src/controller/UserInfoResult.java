package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBManager;
import dto.UserDTO;

@WebServlet("/UserInfoResult")
public class UserInfoResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// index.jsp の「ログイン」ボタンから呼び出される
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String loginId = request.getParameter("loginId");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String icon = request.getParameter("icon");
		String profile = request.getParameter("profile");

		RequestDispatcher dispatcher = null;
		String message = null;

		if (loginId.equals("") || password.equals("")|| username.equals("")) {	//
			// ログインID かパスワードどちらか、もしくは双方未入力なら
			message = "ログインIDとパスワードは必須入力です";

			// エラーメッセージをリクエストオブジェクトに保存
			request.setAttribute("alert", message);

			// UserInfoConfirm.jsp に処理を転送
			dispatcher = request.getRequestDispatcher("UserInfoResult.jsp");
			dispatcher.forward(request, response);
		} else {
			// ログイン認証を行い、ユーザ情報を取得
			DBManager dbm = new DBManager();
			UserDTO user = dbm.getLoginUser(loginId, password, username,icon,profile); //

			if (user != null) {
				// ユーザ情報を取得できたら、書き込み内容リストを取得
				HttpSession session = request.getSession();

				// ログインユーザ情報、書き込み内容リストとしてセッションに保存
				session.setAttribute("user", user);

				// 処理の転送先を UserInfoInput.jsp に指定
				dispatcher = request.getRequestDispatcher("UserInfoResult.jsp");
			} else {
				// ユーザ情報が取得できない場合
				// エラーメッセージをリクエストオブジェクトに保存
				message = "ログインIDまたはパスワードが違います";
				request.setAttribute("alert", message);

				// 処理の転送先を index.jsp に指定
				dispatcher = request.getRequestDispatcher("UserInfoConfirm.jsp");
			}

			// 処理を転送
			dispatcher.forward(request, response);
		}
	}
}
