<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
%> 
<%
	//���� ���� ����ó���� ��� ������ ���� ������ ��ó���� �ȵȴ�. 	

	String uid=request.getParameter("uid");
	//age->int ��ȯ	

	//"1" -> 1 , "��" -> ���� -> ����
	int myAge=Integer.parseInt(uid);
	out.print("���� ���� : "+myAge);
	
	//���������� �������ص� web.xml���� �����ϸ� �ڵ����� ������������ ���ư��� �ִ�.
%>