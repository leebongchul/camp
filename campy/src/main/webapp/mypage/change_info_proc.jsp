<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dao.myPageDAO, com.camp.dto.memberDTO"%>

    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    
    ArrayList<memberDTO> list =  dao.myPageselect();