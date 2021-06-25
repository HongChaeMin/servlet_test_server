package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet {

	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "marobiana");
			put("password", "qwerty1234");
			put("name", "신보람");
		}
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if(id.equals(userMap.get("id"))) {
			if(pw.equals(userMap.get("password"))) {
				out.print(userMap.get("name") + "님 환영합니다!");
			} else {
				out.print("비밀번호가 일치하지 않습니다");
			}
		}else {
			out.print("아이디가 존재하지 않습니다");
		}
		
	}

}
