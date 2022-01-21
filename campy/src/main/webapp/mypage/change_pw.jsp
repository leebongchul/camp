<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/change_pw.css" rel="stylesheet">
</head>
<body>
    <div class="content">
        <form name="changepwForm" action="change_pw_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    
                    <li>   
                        <label>현재 비밀번호</label>
                        <input name="user_pass" type="password" id="user_pass">
                    </li>
                    <li>   
                        <label>변경할 비밀번호</label>
                        <input name="next_pass" type="password" id="next_pass">
                    </li>
                    <li>
                        <label>변경할 비밀번호확인</label>
                        <input name="next_cpass" type="password" id="next_cpass" onblur="passCheck()">
                        <span id="npass_msg" class="npass_msg"></span>
                    </li>
           
                    <li>
                        <span class="cpw_msg" id="cpw_msg"></span>
                        <button type="button" onclick="changePwFormCheck()" class="btn_join">비밀번호 재설정</button>
                    </li>
                </ul>
            </form>
            </div>
<script src="../js/change_pw.js"></script>
</body>
</html>