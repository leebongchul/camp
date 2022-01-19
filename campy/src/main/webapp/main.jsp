<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>메인</title>
<link href="css/campyo.css" rel="stylesheet">
</head>
<body>
<iframe class="h" src="header.jsp" scrolling="no" width="100%" height="100"></iframe>

<div class="slidebox">
    <input type="radio" name="slide" id="slide01" checked>
    <input type="radio" name="slide" id="slide02">
    <input type="radio" name="slide" id="slide03">
    <input type="radio" name="slide" id="slide04">
    <ul class="slidelist">
        <li class="slideitem">
            <div>
                <label for="slide04" class="left"></label>
                <label for="slide02" class="right"></label>
                <a><img src="./images/car_crop.jpg"></a>
            </div>
        </li>
        <li class="slideitem">
            <div>
                <label for="slide01" class="left"></label>
                <label for="slide03" class="right"></label>
                <a><img src="./images/glam_crop.jpg"></a>
            </div>
        </li>
        <li class="slideitem">
            <div>
                <label for="slide02" class="left"></label>
                <label for="slide04" class="right"></label>
                <a><img src="./images/trailer_crop.jpg"></a>
            </div>
        </li>
        <li class="slideitem">
            <div>
                <label for="slide03" class="left"></label>
                <label for="slide01" class="right"></label>
                <a><img src="./images/tent_crop.jpg"></a>
            </div>
        </li>
    </ul>
    
</div>
<iframe class="f" src="footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="js/camp.js"></script>
</body>
</html>