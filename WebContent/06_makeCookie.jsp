<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%!
 	public String getCookie(Cookie[] cookies, String key){
	 //Cookie[] cookies=request.getCookies();
		for(Cookie c : cookies){
			//����� ��Ű�߿� uid�� �����ϸ�
			if(c.getName().equals("uid")){
				//out.print("uid�� ����� ��Ű�� :" + c.getValue());
				//break;
				
				return c.getValue();
			}
		}	 
		return null;
 	}
 
 %>  
    
<%
	//��Ű�� ����
	Cookie cook=new Cookie("uid", "hong1111");

	//������ ���ؼ� Ŭ���̾�Ʈ �������� ����
	response.addCookie(cook);

	//��Ű ����!
	//out.println(getCookie(request.getCookies(), "uid"));
	
	
	//��Ű ����
	//��Ű�� Ű���� ��ġ�ϸ� ����Ⱑ �ȴ�.
	Cookie c1=new Cookie("uid", "12341234");
	response.addCookie(c1);
	out.println("����� ��Ű�� :"+getCookie(request.getCookies(), "uid"));
	
%>