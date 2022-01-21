<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
    
 <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
   <%
   
   String pid= (String)session.getAttribute("pid");
   dto.setUser_id(pid);
    memberDAO dao = new memberDAO();
    int result = dao.PassUpdate(dto);
    
    if(result==1){
    	//비번재설정 완료
    	%>
    	<script>
    	   alert("비밀번호가 재설정 되었습니다");
    	   window.location.replace("../login/login.jsp");
    	</script>
    	<% 
    	
    }else{
    	//재설정 실패
    	%>
    	<script>
    	   alert("비밀번호 재설정 실패!");
    	   history.back();
    	</script>
    	<%    	
    }
    %> 
   