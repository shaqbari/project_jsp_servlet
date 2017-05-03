package com.servlet.login;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "login", description = "�α����ϴ� ����", urlPatterns = { "/login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
        System.out.println("������ Login()");
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("�ʱ�ȭ init()");
	
	}

	public void destroy() {
		System.out.println("�Ҹ� destroy()");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("�������� ��û�Ǵµ� get��� ȣ�� doGet()");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("�������� ��û�Ǵµ� post��� ȣ�� doPost()");
		
		doGet(request, response);
	}

}
