package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodeEx04 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
//		out.println("userID : " + userId);
//		out.println("name : " + name);
//		out.println("birth : " + birth);
//		out.println("email : " + email);
		
		// 테이블로 출력
		out.print("<html>");
		out.print("<head>");
		out.print("<title>회원 정보</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>email</th><td>" + email + "</td></tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
		
	}
	
}
