<%@ page
	 	language="java"
		contentType="text/html; charset=utf-8"
	    pageEncoding="EUC-KR"
	    import="java.util.Date"
%>
  <%
  //�ڹ��� �⺻ ��Ű�� : java.lang.* �̿ܿ��� import�� ���� �����Ƿ� �������� import����� �Ѵ�.
  
  	Date d=new Date();
  	System.out.println(d.getTime());
  %>
  <!-- �Ʒ��� include������: �ٸ� jsp�� �����Ѵ�. charset�� ������� �Ѵ�. -->
<%@ include file="index.jsp" %>