<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
%> 
<%
	//위와 같은 예외처리는 모든 에러에 들어가기 때문에 상세처리가 안된다. 	

	String uid=request.getParameter("uid");
	//age->int 변환	

	//"1" -> 1 , "가" -> 숫자 -> 오류
	int myAge=Integer.parseInt(uid);
	out.print("나의 나이 : "+myAge);
	
	//오류페이지 지정안해도 web.xml에서 지정하면 자동으로 오류페이지로 돌아갈수 있다.
%>