<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
    
<jsp:useBean id="dto"  class="com.camp.dto.memberDTO"></jsp:useBean> 
<jsp:setProperty property="*" name="dto"/>

<%
    memberDAO dao = new memberDAO();
    int result = dao.getLoginResult(dto);
    
    
    if(result == 1){
        //로그인 성공---> id를 세션에 담아 브라우저에 전송
        session.setAttribute("lid", dto.getUser_id());
        response.sendRedirect("../main.jsp");
    }else{
        response.sendRedirect("login.jsp?login_result=fail");
    }
    
%>