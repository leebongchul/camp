<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO, java.util.ArrayList"%>
    
<%
    String lid = (String)session.getAttribute("lid");
    String name = (String)request.getAttribute("user_name");
    String hp2 = (String)request.getAttribute("hp2");
    String hp3 = (String)request.getAttribute("hp3");
    String email1 = (String)request.getAttribute("email1");
    String email2 = (String)request.getAttribute("email2");
%> 
    
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
        <form name="changeForm" action="change_info_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>아이디</label>
                        <input name="id" type="text" id="id" value="<%=lid %>" readonly>
                    </li>
                    <li>
                        <label>이름</label>
                        <input name="name" type="text" id="name" value="<%=name %>">
                    </li>
                    <li>
                       <label>핸드폰번호</label>
                       <span>
                           <select name="hp1" class="hp" id="hp1">
                               <option value="010">010</option>
                               <option value="011">011</option>
                               <option value="016">016</option>
                           </select>
                               - <input type="text" name="hp2" class="hp2" id="hp2" value="<%=hp2 %>">
                               - <input type="text" name="hp3" class="hp3" id="hp3" value="<%=hp3 %>">
                       </span>
                    </li>
                    <li>
                        <label>이메일</label>
                        <input name="email1" type="email" id="email1" class="email1" value="<%=email1 %>"> @
                        <input name="eamil2" type="email" id="email2" class="email2" value="<%=email2 %>">
                        <select class="email3" id="email3" onchange="emailCheck()">
                            <option value="choice">선택</option>
                            <option value="naver.com">naver.com</option>
                            <option value="google.com">google.com</option>
                            <option value="daum.net">daun.net</option>
                            <option value="self">직접입력</option>
                        </select>                   
                    </li>
                    <li>
                        <span class="change_message" id="change_message"></span>
                        <button type="button" onclick="changeFormCheck()" class="btn_join">정보수정</button>
                    </li>
                </ul>
            </form>
            </div>
</body>
</html>