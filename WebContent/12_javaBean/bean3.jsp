<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �� ��ü ���� -->
<%@page import="com.servlet.ch12_javaBean.Person"%>
<jsp:useBean id="person" class="com.servlet.ch12_javaBean.Person"></jsp:useBean>
<!-- *�� ����ϸ� ���� �Ķ���͸� �ѹ��� ���� �� �ִ�. -->
<jsp:setProperty property="*" name="person" />
name : <jsp:getProperty property="name" name="person"/>
<br>
age : <jsp:getProperty property="age" name="person"/>
