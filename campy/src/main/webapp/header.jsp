<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dao.memberDAO, com.camp.dto.memberDTO"%>
    
<%
    String lid = (String)session.getAttribute("lid");
%> 

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="css/campyo.css" rel="stylesheet">

</head>
<body>
<header>
<% if(lid == null){ %>
            <nav>               
                <ul class="header_a">
                    <li><a href="login/login.jsp" target="_parent">로그인</a></li>
                    <li><a href="join/join.jsp" target="_parent">회원가입</a></li>
                </ul>
            </nav>
            <% }else{ %>
              <nav>
                <ul class="header_a">
                    <li><a href="#"><%= lid %>님!!</a></li>
                    <li><a href="login/logout.jsp" target="_parent">로그아웃</a></li>
                    <li><a href="mypage/mypage.jsp" target="_parent">마이페이지</a></li>
                    <% } %>
                </ul>
            </nav>
<a href="main.jsp" target="_parent"><img class="header_image" alt="오류" src="images/campyo.png"></a>

<ul class="header_b">
    <li><a href="search/search.jsp" target="_parent">캠핑장조회</a></li>
    <li><a href="report/report.jsp" target="_parent">캠핑정보</a></li>
    <li><a href="notice/notice_list.jsp" target="_parent">공지사항</a></li>
</ul>
</header>

</body>
</html>