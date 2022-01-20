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
        session.invalidate();
    %>
    <br><br>
        <b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
        <br><br><br>
    
        <input type="button" value="확인" onclick="../main.jsp'">
    
    <%  
    }else{
    %>
        <script>
            alert("비밀번호가 맞지 않습니다.");
            history.go(-1);
        </script>
    <%
        } 
%>
