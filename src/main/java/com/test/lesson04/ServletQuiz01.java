package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class ServletQuiz01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10 ;";
		
		PrintWriter out = response.getWriter();
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			while (resultSet.next()) {
				out.println("매물 주소 : " + resultSet.getString("address") + ", 면적 : " + resultSet.getInt("area") + ", 타입 : " + resultSet.getString("type"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
	}
	
}
