<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String uid=request.getParameter("uid");
	//age->int ��ȯ	
	try{
		//"1" -> 1 , "��" -> ���� -> ����
		int myAge=Integer.parseInt(uid);
		out.print("���� ���� : "+myAge);
	 }catch(Exception e){
		//out.print("�Է��� ���� ���������� �ʽ��ϴ�.");
		//��û�� �״�� �̾�� �ٸ� �������� ������� �ѱ�� ���
		RequestDispatcher dispatcher=request.getRequestDispatcher("error01.jsp");
		dispatcher.forward(request, response);
		//�̷��� try catch�� ó���ϴ°� �ڵ�� ������������ �������ɻ����δ� ����.
	 }
	
%>