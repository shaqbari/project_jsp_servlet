<!-- 지시자directive(페이지) directive: 웹 컨테이너(여기선 tomcat)이
 jsp페이지를 서블릿 클래스로 변환할 때 필요한 여러가지 정보들을 기술하기 위해 사용하는 문법이다. import도 여기서 사용-->>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! 
//선언부: 멤버 변수, 멤버 메소드
	int myAge=10;
	public int getMyAge(){
		return myAge;		
	}
%>
<%
	//스크립틀릿 : doGet(), doPost()의 내부 구현 코드
	//지역성
	myAge+=2;
%>
<%
//전체페이지에 적용되는 파라미터
	out.println("=>" + application.getInitParameter("jspApp"));

%>

<%-- 익스프레션(값을 출력) --%>
<%=getMyAge() %>