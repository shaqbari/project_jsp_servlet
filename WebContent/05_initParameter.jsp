<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	//Ư���������� ����Ǵ� �Ķ���ʹ� jspinit�޼ҵ忡�� ServletContext�� �������� ����Ѵ�.
	public void jspInit(){
		ServletConfig config=getServletConfig();
		if(config.getInitParameter("onlyApp")!=null){
			ServletContext ctx=getServletContext();
			String value=config.getInitParameter("onlyApp");
			ctx.setAttribute("onlyApp", value);
			
		}
	
}
%>

<%
	//��ü�������� ����Ǵ� �Ķ����
	out.println("=>" + application.getInitParameter("jspApp"));
	
	//Ư���������� ����Ǵ� �Ķ����
	out.println("=>"+getServletContext().getAttribute("onlyApp"));
%>