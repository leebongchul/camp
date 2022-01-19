<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/mypage.css" rel="stylesheet">
</head>
<body>
    <div class="login">
    
          <form name="loginForm" action="" method="post">
                <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li class="pass1">
                        <label>비밀번호</label>
                        <input type="password" name="pass" id="pass">
                    </li>
                    <li>
                        <span class="login_message" id="login_message"></span>
                      <button type="button" class="btn_style1" onclick="#"><a id="pwcheck_for_update" href="change_info.jsp" target="frame_target">회원정보 조회&수정</button>
                 </ul>
          </form>
       </div>
</body>
</html>