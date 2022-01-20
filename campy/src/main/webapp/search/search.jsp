<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="../css/campyo.css" rel="stylesheet">
<link href="../css/search.css" rel="stylesheet">
</head>
<body>
<iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="100"></iframe>
<div>
    <form class="search">
        <ul>
            <li>
                <input type="text" placeholder="캠핑장명 입력" name="search_camp">
                <button type="button">검색</button>
            </li>
            <li class="search_">
               <input type="radio" name="local" id="">전체
               <input type="radio" name="local" id="">서울
               <input type="radio" name="local" id="">경기
               <input type="radio" name="local" id="">강원
               <input type="radio" name="local" id="">충청
               <input type="radio" name="local" id="">경상
               <input type="radio" name="local" id="">전라
               <input type="radio" name="local" id="">제주
            </li>
            <li>
                <input type="radio" name="type" id="">전체
                <input type="radio" name="type" id="">캠핑
                <input type="radio" name="type" id="">글램핑
                <input type="radio" name="type" id="">카라반
                <input type="radio" name="type" id="">차박
            </li>
        </ul>
   </form>
       <div class="search_list">
        <span>별점순</span>
        <span>리뷰순</span>
        </div>
        <div class="cardlist_1">
	        <div class="camp1">
	            <div class="card_image">
	             <a href="../room/room.jsp">
	                <img alt="card_image" src="../images/car1.jpg" width=300px;  height=300px;>
	            </a>
	            </div>
	            <div class="card_content">
	                <span>강원/차박</span>
	                <p>백두산캠핑장</p>
	            </div>
	        </div>
	         <div class="camp2">
	            <div class="card_image">
	                <img alt="card_image" src="../images/glam1.jpg" width=300px;  height=300px;>
	            </div>
	            <div class="card_content">
	                <span>제주/글램핑</span>
	                <p>한라산캠핑장</p>
	            </div>
	        </div>
	         <div class="camp3">
	            <div class="card_image">
	                <img alt="card_image" src="../images/camping1.png" width=300px; height=300px;>
	            </div>
	            <div class="card_content">
	                <span>경기/일반</span>
	                <p>캠핑장명</p>
	            </div>
	        </div>
        </div>
        <div class="cardlist_2">
            <div class="camp4">
                <div class="card_image">
                    <img alt="card_image" src="../images/caraban1.jpg" width=300px; height=300px;>
                </div>
                <div class="card_content">
                    <span>충청/카라반</span>
                    <p>캠핑장명</p>
                </div>
            </div>
             <div class="camp5">
                <div class="card_image">
                    <img alt="card_image" src="../images/glam4.jpg" width=300px; height=300px;>
                </div>
                <div class="card_content">
                    <span>전라/글램핑</span>
                    <p>캠핑장명</p>
                </div>
            </div>
             <div class="camp6">
                <div class="card_image">
                    <img alt="card_image" src="../images/car5.jpg" width=300px; height=300px;>
                </div>
                <div class="card_content">
                    <span>경상/차박</span>
                    <p>캠핑장명</p>
                </div>
            </div>
        </div>
</div>


<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
</body>
</html>