<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	//특정페이지에 적용되는 파라미터는 jspinit메소드에서 ServletContext에 저장한후 사용한다.
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
	//전체페이지에 적용되는 파라미터
	out.println("=>" + application.getInitParameter("jspApp"));
	
	//특정페이지에 적용되는 파라미터
	out.println("=>"+getServletContext().getAttribute("onlyApp"));
%>