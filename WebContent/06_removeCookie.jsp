<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//쿠키 삭제	
	//setMaxAge(0); 바로삭제
	//setMaxAge(-1); 브라우저닫을때 삭제
	
	//쿠키를 찾아서
	Cookie[] cookies=request.getCookies();
	for(Cookie c : cookies){
		//저장된 쿠키중에 uid가 존재하면
		System.out.println(c.getName());
		if(c.getName().equals("uid")){
			c.setMaxAge(0);
			//변경한 쿠키를 브라우저에게 전송해야 반영이 된다.!
			response.addCookie(c);
			break;			
		}
	}

	
%>