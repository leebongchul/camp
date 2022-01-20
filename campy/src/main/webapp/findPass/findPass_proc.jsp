<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
     
 <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="dto"  class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>


<%
    memberDAO dao = new memberDAO();
   int result = dao.getPassCheck(dto);
   String name=dto.getUser_name();
   String id = dto.getUser_id();
   System.out.println(name);
   System.out.println(id);
   System.out.println(result);
    if(result==1){
        //비번 변경
        System.out.println("찾음");
        session.setAttribute("pid", dto.getUser_id());
        response.sendRedirect("rePass.jsp");
    }else{
    	System.out.println("못찾음");
    	//화면그대로
        %>
    	<script>
    	   alert("입력한 정보와 일치하는 회원이 없습니다.");
    	   history.back();
    	</script>
    	<%
    }
    %>