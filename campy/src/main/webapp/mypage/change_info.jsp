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
        <form name="joinForm" action="join_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>아이디</label>
                        <input name="id" type="text" id="id">
                    </li>
                    <li>
                        <label>이름</label>
                        <input name="name" type="text" id="name">
                    </li>
                    <li>
                       <label>핸드폰번호</label>
                       <span>
                           <select name="hp1" class="hp" id="hp1">
                               <option value="010">010</option>
                               <option value="011">011</option>
                               <option value="016">016</option>
                           </select>
                               - <input type="text" name="hp2" class="hp2" id="hp2">
                               - <input type="text" name="hp3" class="hp3" id="hp3">
                       </span>
                    </li>
                    <li>
                        <label>이메일</label>
                        <input name="email1" type="email" id="email1" class="email1"> @
                        <input name="eamil2" type="email" id="email2" class="email2">
                        <select class="email3" id="email3" onchange="emailCheck()">
                            <option value="choice">선택</option>
                            <option value="naver.com">naver.com</option>
                            <option value="google.com">google.com</option>
                            <option value="daum.net">daun.net</option>
                            <option value="self">직접입력</option>
                        </select>                   
                    </li>
                    <li>
                        <span class="join_message" id="join_message"></span>
                        <button type="button" onclick="joinFormCheck()" class="btn_join">정보수정</button>
                    </li>
                </ul>
            </form>
            </div>
</body>
</html>