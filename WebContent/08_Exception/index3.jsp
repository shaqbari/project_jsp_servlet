<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    errorPage="error01.jsp"
%> 
<%
	//위와 같은 예외처리는 모든 에러에 들어가기 때문에 상세처리가 안된다. 	

	String age=request.getParameter("age");
	//age->int 변환	

	//"1" -> 1 , "가" -> 숫자 -> 오류
	int myAge=Integer.parseInt(age);
	out.print("나의 나이 : "+myAge);
	

%>