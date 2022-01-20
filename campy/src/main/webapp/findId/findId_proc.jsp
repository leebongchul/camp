<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%> 
    
  <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="dto"  class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
    
    <%
    memberDAO dao = new memberDAO();
    String result = dao.getIdFind(dto);
   
    if(result==null){
    	//존재하지않는 아이디
    	response.sendRedirect("findId.jsp?findId_result=fail");
    }else{
    	session.setAttribute("fid", dto.getUser_id());
    	response.sendRedirect("findId.jsp?findId_result=succ");
    }
    %>