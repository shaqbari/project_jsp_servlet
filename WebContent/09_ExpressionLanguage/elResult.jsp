<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	Integer sum=(Integer)request.getAttribute("sum");
%>
<%=num1 %>+<%=num2%>=<%=sum.intValue()%>
<br>
<!--표현이 간결, 데이터를 일일이 맞출 필요가 없고, null인상황에서도 오류가 없다. -->
<%=num1 %>+<%=num2%>=${sum}<%//타입을 맞추지 않아도 되고 null이어도 빈채로 처리가 된다.%>