<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dao.myPageDAO, com.camp.dto.memberDTO"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
   
    String id=dto.getUser_id();
    String pass =dto.getUser_pass();
    
    String user_id = (String)session.getAttribute("lid");
    System.out.println(id);
    System.out.println(pass);
    System.out.println(user_id);
   // String user_id= (String)session.getAttribute("user_id"); 
   // String user_pass = request.getParameter("user_pass");
    
   if(id.equals(user_id)){
	   System.out.println("아이디같음");
    myPageDAO dao = new myPageDAO();
    int result = dao.memberDelete(dto);
    
    if(result == 1){
        System.out.println("성공");
        session.invalidate();
        //response.sendRedirect("../main.jsp");
    %>
    <script>
    window.parent.location.href="../main.jsp";
     </script>
     <%
    }else{
%>
        <script>
            alert("비밀번호가 맞지 않습니다.");
            history.go(-1);
        </script>
    <%
        } 
    
}else{
%>
    <script>
      alert("로그인 아이디와 다릅니다.")
     history.go(-1);
</script>
<%}%>