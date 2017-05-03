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
		//세션을 모두 삭제한다.
		session.invalidate();
	
		//세션을 다 쓰고 삭제하지 않으면 서버쪽에 많은 자원낭비가 일어난다.
	%>
	<a href="main.jsp">메인화면 이동</a>
</body>
</html>