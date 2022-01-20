<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/report.css" rel="stylesheet">
</head>
<body>
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>
<div class="report_list">
    <button type="button" class="report_btn" onclick="reportList1()" >캠핑장 주의사항</button>
    <button type="button" class="report_btn" onclick="reportList2()">캠핑용품 준비리스트</button>
</div>
<div>
    <div class="report_1" id="report_1">
      <iframe width="560" height="315" name="report_video" src="https://www.youtube.com/embed/gNC-n32JyHI"
       title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
       clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       <p class="videoname">캠핑장 안전수칙</p>
        <iframe width="560" height="315" name="report_video" src="https://www.youtube.com/embed/A9uLnZTH_bI" 
        title="YouTube video player" frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       <p class="videoname">캠핑장 주의사항</p>
    </div>
    
    <div class="report_2" id="report_2">
           <h2>1.텐트</h2>
         <img alt="camplist" src="../images/1.png" width="70%" height="600px">
         <h2>2.그라운드시트(방수포)</h2>
         <img alt="camplist" src="../images/2.png" width="70%" height="600px">
         <h2>3.기본 이너매트</h2>
         <img alt="camplist" src="../images/3.png" width="70%" height="600px">
         <h2>4.캠핑용 테이블&의자</h2>
         <img alt="camplist" src="../images/4.png" width="70%" height="600px">
         <h2>5.버너</h2>
         <img alt="camplist" src="../images/5.png" width="70%" height="600px">
         <h2>6.코펠</h2>
         <img alt="camplist" src="../images/6.png" width="70%" height="600px">
         <h2>7.침낭</h2>
         <img alt="camplist" src="../images/7.png" width="70%" height="600px">
         <h2>8.전기장판</h2>
         <img alt="camplist" src="../images/8.png" width="70%" height="600px">
         <h2>9.랜턴</h2>
         <img alt="camplist" src="../images/9.png" width="70%" height="600px">
         <h2>10.릴선</h2>
         <img alt="camplist" src="../images/10.png" width="70%" height="600px">
         <h2>11.아이스박스</h2>
         <img alt="camplist" src="../images/11.png" width="70%" height="600px">
         <h2>12.타프</h2>
         <img alt="camplist" src="../images/12.png" width="70%" height="600px">
    </div>
</div>



<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
</body>
</html>