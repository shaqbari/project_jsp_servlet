<%@ page
	 	language="java"
		contentType="text/html; charset=utf-8"
	    pageEncoding="EUC-KR"
	    import="java.util.Date"
%>
  <%
  //자바의 기본 패키지 : java.lang.* 이외에는 import를 하지 않으므로 수동으로 import해줘야 한다.
  
  	Date d=new Date();
  	System.out.println(d.getTime());
  %>
  <!-- 아래는 include지시자: 다른 jsp를 삽입한다. charset을 맞춰줘야 한다. -->
<%@ include file="index.jsp" %>