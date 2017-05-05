<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 빈 객체 생성 -->
<%@page import="com.servlet.ch12_javaBean.Person"%>
<jsp:useBean id="person" class="com.servlet.ch12_javaBean.Person"></jsp:useBean>
<!-- *를 사용하면 많은 파라미터를 한번에 받을 수 있다. -->
<jsp:setProperty property="*" name="person" />
name : <jsp:getProperty property="name" name="person"/>
<br>
age : <jsp:getProperty property="age" name="person"/>
