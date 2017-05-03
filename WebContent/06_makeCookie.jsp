<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%!
 	public String getCookie(Cookie[] cookies, String key){
	 //Cookie[] cookies=request.getCookies();
		for(Cookie c : cookies){
			//저장된 쿠키중에 uid가 존재하면
			if(c.getName().equals("uid")){
				//out.print("uid로 저장된 쿠키값 :" + c.getValue());
				//break;
				
				return c.getValue();
			}
		}	 
		return null;
 	}
 
 %>  
    
<%
	//쿠키를 생성
	Cookie cook=new Cookie("uid", "hong1111");

	//응답을 통해서 클라이언트 브라우저에 전송
	response.addCookie(cook);

	//쿠키 열기!
	//out.println(getCookie(request.getCookies(), "uid"));
	
	
	//쿠키 수정
	//쿠키의 키값이 일치하면 덮어쓰기가 된다.
	Cookie c1=new Cookie("uid", "12341234");
	response.addCookie(c1);
	out.println("변경된 쿠키값 :"+getCookie(request.getCookies(), "uid"));
	
%>