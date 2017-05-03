<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%-- jsp의 라이프 사이클 --%>

<%!
	public void jspInit(){
		System.out.println("jsp 초기화 코드 호출 jspInit()");
	
	} 

	public void jspDestroy(){//코드 추가나 삭제가 되어 reload가 되어야 호출된다.
		System.out.println("jsp 종료 코드 호출 jspDestory()");
		
	}	
%>

<%
out.print("helloWorld<br>");
out.print("helloWorld<br>");
%>
