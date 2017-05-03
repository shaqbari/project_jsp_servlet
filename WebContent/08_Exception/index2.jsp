<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String uid=request.getParameter("uid");
	//age->int 변환	
	try{
		//"1" -> 1 , "가" -> 숫자 -> 오류
		int myAge=Integer.parseInt(uid);
		out.print("나의 나이 : "+myAge);
	 }catch(Exception e){
		//out.print("입력한 값은 정상적이지 않습니다.");
		//요청을 그대로 이어가서 다른 페이지로 제어권을 넘기는 기술
		RequestDispatcher dispatcher=request.getRequestDispatcher("error01.jsp");
		dispatcher.forward(request, response);
		//이렇게 try catch로 처리하는게 코드는 복잡해지지만 서버성능상으로는 좋다.
	 }
	
%>