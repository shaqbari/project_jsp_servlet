<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%-- jsp�� ������ ����Ŭ --%>

<%!
	public void jspInit(){
		System.out.println("jsp �ʱ�ȭ �ڵ� ȣ�� jspInit()");
	
	} 

	public void jspDestroy(){//�ڵ� �߰��� ������ �Ǿ� reload�� �Ǿ�� ȣ��ȴ�.
		System.out.println("jsp ���� �ڵ� ȣ�� jspDestory()");
		
	}	
%>

<%
out.print("helloWorld<br>");
out.print("helloWorld<br>");
%>
