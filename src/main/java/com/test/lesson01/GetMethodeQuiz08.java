package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodeQuiz08 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String serch = request.getParameter("serch");

		List<String> list = new ArrayList<>(Arrays.asList("강남역 최고 맛집 소개 합니다.", "오늘 기분 좋은 일이 있었네요.",
				"역시 맛집 데이트가 제일 좋네요.", "집에 가는 길에 동네 맛집 가서 안주 사갑니다.", "자축 저 오늘 생일 이에요."));

		out.print("<html>");
		out.print("<head>");
		out.print("<title>검색결과</title>");
		out.print("</head>");
		out.print("<body>");
		for (String str : list) {
			if (str.contains(serch)) {
				str = str.replaceAll(serch, "<b>" + serch + "</b>");
			}
		}
		for(String text : list) {
			// 선생님 풀이
			int index = text.indexOf(serch);
			StringBuffer sb = new StringBuffer();
			sb.append(text);
			sb.insert(index, "<b>"); // 맛집 앞 부분에 <b> 태그 추가
			sb.insert(index + serch.length() + 3, "</b>"); // b태그가 추가 되었으니 총길이와 b태그 길이, 인덱스 길이를 더함
			out.print(sb + "<br>");
		}
		out.print("</body>");
		out.print("</html>");

	}

}
