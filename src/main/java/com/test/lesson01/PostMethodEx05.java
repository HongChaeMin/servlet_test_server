package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String brith = request.getParameter("brith");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		
		// 테이블로 출력
		out.print("<html>");
		out.print("<head>");
		out.print("<title>회원 정보</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table>");
		out.print("<tr><th>아이디</th><td>" + userId  + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name  + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + brith  + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email  + "</td></tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
	}
	
}
