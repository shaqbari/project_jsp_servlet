<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 后 按眉 积己 -->
<%@page import="com.servlet.ch12_javaBean.Person"%>
<jsp:useBean id="person" class="com.servlet.ch12_javaBean.Person"></jsp:useBean>
<jsp:setProperty property="name" name="person" param="name"/>
<jsp:setProperty property="age" name="person" param="age"/>
name : <jsp:getProperty property="name" name="person"/>
<br>
age : <jsp:getProperty property="age" name="person"/>
