<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="user_id, user_pass" name="dto"/>

<%
    memberDAO dao = new memberDAO();
    int result = dao.memberDelete(dto);
    
    if(result == 1){
        //System.out.println("성공");
        response.sendRedirect("../main.jsp");
    }else{
        System.out.println("회원탈퇴 실패");
    }   
%>