<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String nickname=request.getParameter("nickname");
	session.setAttribute("nickname", nickname);
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	uid:<%=session.getAttribute("uid") %>
	upw:<%=session.getAttribute("upw") %>
	nickname:<%=session.getAttribute("nickname") %>
	<%
		//������ ��� �����Ѵ�.
		session.invalidate();
	
		//������ �� ���� �������� ������ �����ʿ� ���� �ڿ����� �Ͼ��.
	%>
	<a href="main.jsp">����ȭ�� �̵�</a>
</body>
</html>