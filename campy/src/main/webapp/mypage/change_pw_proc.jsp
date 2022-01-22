<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
     
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
       memberDAO pdao = new memberDAO();//이거 의미없는데 뭔짓한거임?
       dto.setUser_pass(dto.getNext_pass());
       int pass_result = pdao.PassUpdate(dto);
       System.out.println(dto.getUser_id());
       System.out.println(dto.getUser_pass());
       if(pass_result==1){
    	   //비밀번호 변경완료
    	   %>
           <script>
              alert("비밀번호가 재설정 되었습니다.마이페이지로 이동합니다.");
              window.parent.location.href="../mypage/mypage.jsp";
           </script>
           <% 
       }else{
    	   //비밀번호 변경실패
    	   %>
           <script>
              alert("비밀번호 재설정 실패!");
              history.back();
           </script>
           <%  
       }
       
       
   }else{
       //로그인아이디와 입력한 비번이 다름
       %>
       <script>
          alert("입력한 현재비밀번호가 틀렸습니다.");
          history.back();
       </script>
       <%       
   }
   %>








