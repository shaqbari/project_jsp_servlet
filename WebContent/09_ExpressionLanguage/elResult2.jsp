<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
   <%/*EL�� ���� �뺯=>��
   			view�� ǥ���Ҷ��� ����
   			������ ������ ��ü������ �Ѱ�
   
   */ 
   	String agent=request.getHeader("user-agent");
   %>
${param.num1}+${param.num2}=${sum}
<br>
<%=agent %>>
<br>
${header}