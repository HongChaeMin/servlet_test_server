package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodeQuiz07 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("text/html");
		
		String address = request.getParameter("address");
		String price = request.getParameter("price");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>주문결과</title>");
		out.print("</head>");
		out.print("<body>");
		out.print(address + "<b>배달 준비중</b><br>결제 금액 : " + price + "원");
		out.print("</body>");
		out.print("</html>");
		
	}
	
}
