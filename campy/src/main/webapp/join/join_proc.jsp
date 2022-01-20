<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
    memberDAO dao = new memberDAO();
    int result = dao.insert(dto);
    
    if(result == 1){
        //System.out.println("회원가입 성공");
        response.sendRedirect("../login/login.jsp?join_result=succ");
    }else{
        
        System.out.println("회원가입 실패");
    }   
%>

