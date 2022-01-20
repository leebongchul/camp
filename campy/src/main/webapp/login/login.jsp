<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String login_result = request.getParameter("login_result");
    String join_result = request.getParameter("join_result");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">

</head>
<body>
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>


<div class="login">
    
          <form name="loginForm" action="login_proc.jsp" method="post">
                <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>아이디</label>
                        <input type="text" name="user_id" id="id">
                    </li>
                    <li class="pass1">
                        <label>비밀번호</label>
                        <input type="password" name="user_pass" id="pass">
                    </li>
                    <li>
                        <span class="login_message" id="login_message"></span>
                      <button type="button" class="btn_style1" onclick="loginFormCheck()">로그인</button>
                 </ul>
                 <ul class="btm">
                    <li class="btm_span">
                        <span class="span1"><a href="../join/join.jsp">회원가입</a></span>
                        <span class="span2"><a href="../findId/findId.jsp">아이디 찾기</a></span>
                        <span class="span3"><a href="../findPass/findPass.jsp">비밀번호 찾기</a></span>
                    </li>
                </ul>
          </form>
       </div>
<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
<script>
if('<%=login_result%>' == 'fail'){
    alert("아이디 또는 패스워드가 다릅니다. 확인 후 다시 진행해주세요");
}

</script>
</body>
</html>