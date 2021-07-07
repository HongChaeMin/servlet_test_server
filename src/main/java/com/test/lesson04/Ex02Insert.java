package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {		
		String name = request.getParameter("name");
		String birth = request.getParameter("brith");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MysqlService mysqlService = MysqlService.getInstance();
		try {
			mysqlService.update("INSERT INTO `new_user` (`name`, `yyyymmdd`, `introduce`, `email`) VALUES ('" + name + "', '" + birth + "', '" + introduce + "', '" + email + "');");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mysqlService.disconnect();
		
		// 목록 화면 이동 => 리다이렉트(redirect)
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		
	}
	
}
