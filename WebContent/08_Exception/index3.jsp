<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    errorPage="error01.jsp"
%> 
<%
	//���� ���� ����ó���� ��� ������ ���� ������ ��ó���� �ȵȴ�. 	

	String age=request.getParameter("age");
	//age->int ��ȯ	

	//"1" -> 1 , "��" -> ���� -> ����
	int myAge=Integer.parseInt(age);
	out.print("���� ���� : "+myAge);
	

%>