<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/mypage.css" rel="stylesheet">
</head>
<body>
    <div class="content">
        <form name="exitForm" action="exit_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>아이디</label>
                        <input name="user_id" type="text" id="id">
                    </li>
                    <li>   
                        <label>비밀번호</label>
                        <input name="user_pass" type="password" id="pass">
                    </li>
                    <li>
                        <span class="exit_message" id="exit_message"></span>
                        <button type="button" onclick="exitFormCheck()" class="btn_exit">탈퇴하기</button>
                    </li>
                </ul>
        </form>
    </div>
    
    <script src="../js/mypage.js"></script>
    
</body>
</html>