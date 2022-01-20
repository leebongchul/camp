<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/rePass.css" rel="stylesheet">
</head>
<body>
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>
<div class="rePass">
        <form name="rePassForm" action="rePass_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
            <h1 class="repass_name">비밀번호 재설정</h1>
                <ul class="top">
                    <li>
                        <label>새비밀번호*</label>
                        <input name="user_pass" type="password" id="pass">
                    </li>
                    <li>
                        <label>새비밀번호 확인*</label>
                        <input name="cpass" type="password" id="cpass" onblur="repassCheck()">
                        <span class="repass_checkmessage" id="repass_checkmessage"></span>
                    </li>
                    
                    <li>
                        <span class="rePass_message" id="rePass_message"></span>
                        <button type="button" onclick="rePassFormCheck()" class="btn_rePass">설정</button>
                    </li>
                </ul>
            </form>
            </div>

<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
<script src="../js/repass.js"></script>
</body>
</html>