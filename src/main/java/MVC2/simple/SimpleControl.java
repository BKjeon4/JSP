package MVC2.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SimpleControl extends HttpServlet {
	
	//********************** 절대경로위치 확인
	private String jspDir = "/05_mvc_class/1_mvcSimple";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String value = "안녕하세요";
		
		request.setAttribute("param", value); //forward 까지는 사용 가능
		
		// forward <jsp:forward>
		RequestDispatcher dispatcher = request.getRequestDispatcher(jspDir + "/simpleView.jsp");
		dispatcher.forward(request, response);
	}

}
