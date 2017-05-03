package com.servlet.ch09_ExpressionLanguage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "el", description = "el���� ���� ������ ���� �� ��� Ȯ��", urlPatterns = { "/el" })
public class MyElTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyElTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 0. 10, 100 -> 10+100=110ó�� ����(����ó��)
		 * 1. ��û�� ���´�.
			2. �Ķ���� ����
			3. ����� �����͸� �����Ͽ� �����͸� �߰��Ѵ�.
			4. ���� ���ȭ�鿡 �����͸� �Ǿ ������.
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
