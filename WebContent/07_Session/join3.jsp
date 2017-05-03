<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <% 
  	String upw = request.getParameter("upw");
  	session.setAttribute("upw", upw);
  	session.removeAttribute("nickname");
  %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세번째입력</title>
</head>
<body>
	<h3>닉네임</h3>
	<fieldset>
		<form action="/project_jsp_servlet/07_Session/result.jsp">
			<input type="text" name="nickname" placeholder="닉네임">
			<input type="submit" value="최종완료">
		</form>
	</fieldset>
</body>
</html>