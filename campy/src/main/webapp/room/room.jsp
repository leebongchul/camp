<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/room.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="shortcut icon" href="#">
</head>
<body>
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>
<div class="room">
<span class="date">입실날짜 : </span>
<input type="text"  class="datepicker">
<span class="date">퇴실날짜 : </span>
<input type="text"  class="datepicker">
</div>
<div>
<span>객실선택</span>
	<div>
	   <div class="room_ex">
		    <div class="room_imgname">
		        <img alt="room">
		        <span class="room_name">객실명</span>
		    </div>
		    <div class="room_detail">	    
		        <span class="room_content">객실설명</span>
		    </div>   
	   </div>
	    <div class="room_ex">
            <div class="room_imgname">
                <img alt="room">
                <span class="room_name">객실명</span>
            </div>
            <div class="room_detail">       
                <span class="room_content">객실설명</span>
            </div>   
       </div>
       <div class="room_ex">
            <div class="room_imgname">
                <img alt="room">
                <span class="room_name">객실명</span>
            </div>
            <div class="room_detail">       
                <span class="room_content">객실설명</span>
            </div>   
       </div>
</div>
<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/room.js"></script>
</body>
</html>