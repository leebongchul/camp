<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dao.myPageDAO, com.camp.dto.memberDTO"%>

 <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="com.camp.dto.memberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
    
<%
  String lid = (String)session.getAttribute("lid");
   dto.setUser_id(lid);
   
   memberDAO dao = new memberDAO();
   int result = dao.getLoginResult(dto);
   
   if(result==1){
       //로그인아이디와 입력한 비번 일치 
       memberDAO mdao = new memberDAO();
       dto.setUser_name(dto.());
       int change_result = mdao.(dto);
       
       if(change_result==1){
           //비밀번호 변경완료
           %>
           <script>
              alert("회원정보가 재설정 되었습니다.마이페이지로 이동합니다.");
              window.parent.location.href="../mypage/mypage.jsp";
           </script>
           <% 
       }else{
           //비밀번호 변경실패
           %>
           <script>
              alert("회원정보 재설정 실패!");
              history.back();
           </script>
           <%  
       }
       
       
   }else{
       //로그인아이디와 입력한 비번이 다름
       %>
       <script>
          alert("틀렸습니다.");
          history.back();
       </script>
       <%       
   }
   %>