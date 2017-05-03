<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("uid");
%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>첫번째입력</title>
</head>
<body>
	<h3>이메일</h3>
	<fieldset>
		<form action="/project_jsp_servlet/07_Session/join2.jsp">
			<input type="text" name="uid" placeholder="이메일">
			<input type="submit" value="1단계완료">
		</form>
	</fieldset>
</body>
</html>