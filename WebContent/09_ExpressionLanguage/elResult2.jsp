<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
   <%/*EL은 식을 대변=>값
   			view를 표방할때는 강력
   			연산을 들어갈때는 자체만으로 한계
   
   */ 
   	String agent=request.getHeader("user-agent");
   %>
${param.num1}+${param.num2}=${sum}
<br>
<%=agent %>>
<br>
${header}