<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//��Ű ����	
	//setMaxAge(0); �ٷλ���
	//setMaxAge(-1); ������������ ����
	
	//��Ű�� ã�Ƽ�
	Cookie[] cookies=request.getCookies();
	for(Cookie c : cookies){
		//����� ��Ű�߿� uid�� �����ϸ�
		System.out.println(c.getName());
		if(c.getName().equals("uid")){
			c.setMaxAge(0);
			//������ ��Ű�� ���������� �����ؾ� �ݿ��� �ȴ�.!
			response.addCookie(c);
			break;			
		}
	}

	
%>