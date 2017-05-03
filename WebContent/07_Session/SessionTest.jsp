<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	session.setAttribute("upw", "1234");

	
%>
<%= session.getAttribute("upw")  %>