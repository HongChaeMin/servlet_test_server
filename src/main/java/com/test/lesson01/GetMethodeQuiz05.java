package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodeQuiz05 extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		
		int value = Integer.valueOf(request.getParameter("value"));
		
		response.setContentType("text/html");
		
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<ul>");
		for (int i = 1; i <= 9; i++) {
			out.print("<li>" + value + " X " + i + " = " + (value * i));
		}
		out.print("</ul>");
		out.print("</body>");
		out.print("</html>");
		
	}
	
}
