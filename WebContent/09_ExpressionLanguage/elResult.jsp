<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	Integer sum=(Integer)request.getAttribute("sum");
%>
<%=num1 %>+<%=num2%>=<%=sum.intValue()%>
<br>
<!--ǥ���� ����, �����͸� ������ ���� �ʿ䰡 ����, null�λ�Ȳ������ ������ ����. -->
<%=num1 %>+<%=num2%>=${sum}<%//Ÿ���� ������ �ʾƵ� �ǰ� null�̾ ��ä�� ó���� �ȴ�.%>