<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
//��������
	int myCnt=0;
	public void jspInit(){
		myCnt++;
	}
	
	public void jspDestroy(){
		
	}
%>

<%
	//��������
	int count=0;
	count++;
	myCnt++;
	
%>
<%= count %>/<%=myCnt %>