<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
    *{
  box-sizing: border-box; 
}
  
.que:first-child{
    border-top: 1px solid black;
  }
  
.que{
  position: relative;
  padding: 17px 0;
  cursor: pointer;
  font-size: 14px;
  border-bottom: 1px solid #dddddd;
  
}
  
.que::before{
  display: inline-block;
  content: 'Q';
  font-size: 14px;
  color: #006633;
  margin-right: 5px;
}

.que.on>span{
  font-weight: bold;
  color: #006633; 
}
  
.anw {
  display: none;
    overflow: hidden;
  font-size: 14px;
  background-color: #f4f4f2;
  padding: 27px 0;
}
  
.anw::before {
  display: inline-block;
  content: 'A';
  font-size: 14px;
  font-weight: bold;
  color: #666;
  margin-right: 5px;
}
</style>
</head>
<body>
    <h1>도움말</h1>

<div id="Accordion_wrap">
     <div class="que">
      <span>예약을 취소하고 싶어요</span>
     </div>
     <div class="anw">
      <span>예약한 캠핑장에 연락하세요</span>
     </div>
      <div class="que">
      <span>환불하고 싶어요</span>
     </div>
     <div class="anw">
      <span>해당 캠핑장에 연락하세요</span>
     </div>
      <div class="que">
      <span>모르겠어요</span>
     </div>
     <div class="anw">
      <span>ㅠㅠㅠㅠ</span>
     </div>
</div>

    <script>
    $(".que").click(function() {
    $(this).next(".anw").stop().slideToggle(300);
    $(this).toggleClass('on').siblings().removeClass('on');
    $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
    });
    </script>

</body>
</html>