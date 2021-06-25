package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodeQuiz06 extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse respones) throws IOException {
		
		PrintWriter out = respones.getWriter();
		
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		
		respones.setContentType("text/json");
		
		out.print("{\"addtion\" : " + (number1 + number2) + ",");
		out.print("\"subtraction\" : " + (number1 - number2) + ",");
		out.print("\"multiplication\" : " + (number1 * number2) + ",");
		out.print("\"division\" : " + (number1 / number2) + " }");
		
	}
	
}
