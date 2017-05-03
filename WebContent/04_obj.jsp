<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% //스크립틀릿에서 내장객체가 사용된다.내장객체는 new하지 않아도 사용이 가능하다.
	String uid=request.getParameter("uid");
	//response.setCharacterEncoding("utf-8");
	//response.setContentType("text/html; charset=utf-8");
	out.println("hello");
	out.println(uid);
%>
hi