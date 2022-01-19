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
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>

<div class="rsrv">
        <form name="rsrvForm" action="" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>객실명</label>
                        <input name="name" type="text" id="name">
                    </li>
                    <li>   
                        <label>날짜</label>
                        <input name="date1" type="text" id="date1"> ~
                        <input name="date1" type="text" id="date2">
                    </li>
                    <li>
                        <label>예약자명</label>
                        <input name="rname" type="text" id="rname">
                    </li>
                    <li>
                        <label>인원</label>
	                        <span>
		                        <select name="rsrv_man" class="rsrv_man" id="rsrv_man">
		                               <option value="1명">1명</option>
		                               <option value="2명">2명</option>
		                               <option value="3명">3명</option>
		                               <option value="4명">4명</option>
		                        </select>
	                        </span>   
                    </li>
                    <li>
                       <label>연락처*</label>
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
                        <span class="rsrv_message" id="rsrv_message"></span>
                        <button type="button" onclick="rsrvFormCheck()" class="btn_rsrv1">예약하기</button>
                        <button type="button" onclick="rsrvFormCheck()" class="btn_rsrv2">뒤로가기</button>
                    </li>
                </ul>
            </form>
            </div>

<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
</body>
</html>