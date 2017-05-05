<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.servlet.ch12_javaBean.Person"%>
<%
	Person obj2=new Person();
	obj2.setAge(100);
	out.println("[1] age : "+obj2.getAge());
%>
<br>
<jsp:useBean id="obj" class="com.servlet.ch12_javaBean.Person"></jsp:useBean>
<jsp:setProperty property="age" name="obj" value="100"/>
[2] age : <jsp:getProperty property="age" name="obj"/>
<jsp:setProperty property="name" name="obj" value="pop"/>
[2] name : <jsp:getProperty property="name" name="obj"/>