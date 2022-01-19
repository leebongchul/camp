<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
</head>
<body>
    <div class="content">
        <form name="joinForm" action="" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    
                    <li>   
                        <label>현재 비밀번호</label>
                        <input name="now_pass" type="password" id="pass">
                    </li>
                    <li>   
                        <label>변경할 비밀번호</label>
                        <input name="next_pass" type="password" id="pass">
                    </li>
                    <li>
                        <label>변경할 비밀번호확인</label>
                        <input name="next_cpass" type="password" id="cpass">
                    </li>
                    
                    
                    
                    <li>
                        <button type="button" onclick="FormCheck()" class="btn_join">비밀번호 재설정</button>
                    </li>
                </ul>
            </form>
            </div>
</body>
</html>