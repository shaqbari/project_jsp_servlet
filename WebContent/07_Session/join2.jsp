<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%String uid=request.getParameter("uid");
   		session.setAttribute("uid", uid);
   		session.removeAttribute("upw");
   %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ι�°�Է�</title>
</head>
<body>
	<h3>�н�����</h3>
	<fieldset>
		<form action="/project_jsp_servlet/07_Session/join3.jsp">
			<input type="password" name="upw" placeholder="�н�����">
			<input type="submit" value="2�ܰ�Ϸ�">
		</form>
	</fieldset>
</body>
</html>