package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "st", description = "세션테스트", urlPatterns = { "/st" })
public class SessionTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("uid", "hong1234");		
		response.getWriter().append("Served at: ")
			.append((String)request.getSession().getAttribute("uid"));
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
