<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dao.myPageDAO, com.camp.dto.memberDTO"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%

    String user_id= (String)session.getAttribute("user_id");
    String user_pass = request.getParameter("user_pass");



    myPageDAO dao = new myPageDAO();
    int result = dao.memberDelete(dto);
    
    if(result == 1){
        //System.out.println("성공");
        session.invalidate();
        response.sendRedirect("../main.jsp");
%>
    }else{
        <script>
            alert("비밀번호가 맞지 않습니다.");
            history.go(-1);
        </script>
    <%
        } 
%>
