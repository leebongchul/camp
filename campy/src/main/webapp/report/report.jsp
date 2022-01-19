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
         캠핑용품 준비리스트
    </div>
</div>



<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
</body>
</html>