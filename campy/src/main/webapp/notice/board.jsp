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
    <!-- header -->
    <iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>
    
    <!-- 사이드 네비바 -->
    <div class="sidebar_menu">
    <ul>
        <li><a href="notice_list.jsp" target="frame_target">공지사항</a></li>
        <li><a href="qna_list.jsp" target="frame_target">Q & A</a></li>
        <li><a href="help_list.jsp" target="frame_target">도움말</a></li>
    </ul>
    </div>
    
    <!-- 마이페이지 iframe -->
    <iframe id="main_iframe" src="main_iframe.jsp" name="frame_target"></iframe>
    
    <!-- footer -->
    <iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe> 
</body>
</html>