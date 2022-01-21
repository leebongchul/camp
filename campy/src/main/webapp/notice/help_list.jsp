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
      <span>예약변경 가능한가요?</span>
     </div>
     <div class="anw">
      <span>예약변경은 불가합니다. 취소 후 재예약 부탁드립니다.</span>
     </div>
      <div class="que">
      <span>환불은 언제되나요?</span>
     </div>
     <div class="anw">
      <span>    
        환불은 7~10일정도 소요 되오니 양해 부탁드립니다.

        (주말이나 공휴일 포함시 소요시간이 늘어날 수 있습니다.)</span>
     </div>
      <div class="que">
      <span>예약금 입금은 언제까지인가요?</span>
     </div>
     <div class="anw">
      <span>최소 입실 2일전까지 입금(미입금시 예약취소) 부탁드립니다.</span>
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