<!-- ������directive(������) directive: �� �����̳�(���⼱ tomcat)��
 jsp�������� ���� Ŭ������ ��ȯ�� �� �ʿ��� �������� �������� ����ϱ� ���� ����ϴ� �����̴�. import�� ���⼭ ���-->>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! 
//�����: ��� ����, ��� �޼ҵ�
	int myAge=10;
	public int getMyAge(){
		return myAge;		
	}
%>
<%
	//��ũ��Ʋ�� : doGet(), doPost()�� ���� ���� �ڵ�
	//������
	myAge+=2;
%>
<%
//��ü�������� ����Ǵ� �Ķ����
	out.println("=>" + application.getInitParameter("jspApp"));

%>

<%-- �ͽ�������(���� ���) --%>
<%=getMyAge() %>