<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	int sum=num1+num2;
	out.println(sum);
%>
<br>
<jsp:scriptlet>
	int num01=Integer.parseInt(request.getParameter("num1"));
	int num02=Integer.parseInt(request.getParameter("num2"));
	int sum0=num1+num2;
	out.println(sum0);
</jsp:scriptlet>
<br>
<%=sum %>
<br>
${sum}
<br>
<jsp:expression>
sum
</jsp:expression>
<jsp:forward page="elResult3.jsp">
	<jsp:param value="100" name="sum"/>
</jsp:forward>
