<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.camp.dto.memberDTO"%>
    
 <%
    String findId_result = request.getParameter("findId_result");
    String fid = (String)session.getAttribute("fid");

%>
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

<div class="findId">
    
          <form name="findIdForm" action="findId_proc.jsp" method="post">
                <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>이름*</label>
                        <input type="text" name="user_name" id="name">
                    </li>
                    <li>
                        <label>이메일*</label>
                        <input name="email1" type="email" id="email1" class="email1"> @
                        <input name="email2" type="email" id="email2" class="email2">
                        <select class="email3" id="email3" onchange="emailCheck()">
                            <option value="choice">선택</option>
                            <option value="naver.com">naver.com</option>
                            <option value="google.com">google.com</option>
                            <option value="daum.net">daun.net</option>
                            <option value="self">직접입력</option>
                        </select>                   
                    </li>
                    <li>
                    <span class="findId_message" id="findId_message"></span>
                    <button type="button" class="btn_style1" onclick="findIdFormCheck()">찾기</button>
                    </li>
                </ul>
          </form>
       </div>



<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
<script>
if('<%=findId_result%>' == 'fail'){
    document.getElementById("findId_message").innerHTML="존재하지않는 아이디입니다.";
}

/* 회원가입 성공 메시지 출력 */
if('<%=findId_result%>' == 'succ'){
	document.getElementById("findId_message").innerHTML="가입된 아이디가 존재합니다 : <%=fid%>";
		document.getElementById("findId_message").style.color="blue";
}
</script>
</body>
</html>