package com.servlet.ch09_ExpressionLanguage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "el", description = "el식을 통한 데이터 전달 및 결과 확인", urlPatterns = { "/el" })
public class MyElTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyElTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 0. 10, 100 -> 10+100=110처리 서블릿(덧셈처리)
		 * 1. 요청이 들어온다.
			2. 파라미터 추출
			3. 추출된 데이터를 가공하여 데이터를 추가한다.
			4. 최종 결과화면에 데이터를 실어서 보낸다.
			page, request, session, application
		*/
		
		String num1=request.getParameter("num1");
		String num2=request.getParameter("num2");
		
		int num1_v=Integer.parseInt(num1);
		int num2_v=Integer.parseInt(num2);
		int sum=num1_v+num2_v;
		
		request.setAttribute("sum", sum);
		RequestDispatcher dis= request.getRequestDispatcher("/09_ExpressionLanguage/elResult2.jsp");
		dis.forward(request, response);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
