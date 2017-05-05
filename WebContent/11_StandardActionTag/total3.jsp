<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
123456789
<br>
<%
	//가장먼저 수행되기 때문에 원하는 위치에서 출력하려면
	//아래의 flush()메소드를 이용해야한다.
	out.flush(); //인위적이기 때문에 이런 방법은 가급적 사용하지 않는다.
	RequestDispatcher rd=request.getRequestDispatcher("content.jsp");
	rd.include(request, response);
%>
<br>
ABCDEFG