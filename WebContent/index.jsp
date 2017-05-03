<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	hello servlet
	
	<form action="/project_jsp_survlet/h" method="get">
		<input type="text" name="uid">
		<input type="submit" value="/project_jsp_survlet/h에 전송">
	</form>
	
	<form action="obj.jsp" method="post">
		<input type="text" name="uid">
		<input type="submit" value="obj에 전송">
	</form>
</body>
</html>