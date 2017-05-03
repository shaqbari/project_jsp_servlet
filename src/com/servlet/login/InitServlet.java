package com.servlet.login;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *	���� ���� : �ʱ�ȭ �Ķ���� 
 * @author sakba
 *
 */
@WebServlet(
		name = "i", 
		description = "�ʱ�ȭ �Ķ���͸� ���� ����", 
		urlPatterns = { "/i" }, 
		initParams = { 
				@WebInitParam(name = "age", value = "100", description = "����")
		})
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitServlet() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		//�� ������ ����ϴ� �ʱ�ȭ �ڵ�
		System.out.println(config.getInitParameter("age"));
		
		//��ü ������������ ����ϴ� �ʱ�ȭ �ڵ�
		System.out.println(config.getServletContext().getInitParameter("gAge"));
		
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
