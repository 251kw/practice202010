package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	UserDTO user = new UserDTO();
	user.setLoginId(loginId);
	user.setPassword(password);
	user.setUserName(username);
	user.setPassword(icon);
	user.setUserName(profile);

	request.setAttribute("user",user);

	ServletContext sc = getServletContext();
	sc.getRequestDispatcher("/UserInfoConfirm.jsp")
	.forward(request, response);
	}
}
