<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("uid");
%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ù��°�Է�</title>
</head>
<body>
	<h3>�̸���</h3>
	<fieldset>
		<form action="/project_jsp_servlet/07_Session/join2.jsp">
			<input type="text" name="uid" placeholder="�̸���">
			<input type="submit" value="1�ܰ�Ϸ�">
		</form>
	</fieldset>
</body>
</html>