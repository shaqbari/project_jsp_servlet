<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
123456789
<br>
<%
	//������� ����Ǳ� ������ ���ϴ� ��ġ���� ����Ϸ���
	//�Ʒ��� flush()�޼ҵ带 �̿��ؾ��Ѵ�.
	out.flush(); //�������̱� ������ �̷� ����� ������ ������� �ʴ´�.
	RequestDispatcher rd=request.getRequestDispatcher("content.jsp");
	rd.include(request, response);
%>
<br>
ABCDEFG