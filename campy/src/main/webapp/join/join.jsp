<%@page import="com.camp.dao.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.camp.dto.memberDTO, java.util.ArrayList"%>
    
<% 
    String join_result = request.getParameter("join_result");
    memberDAO dao = new memberDAO();
    ArrayList<memberDTO> id_list = dao.idCheck();
    StringBuffer id_values = new StringBuffer();
    for(int i=0; i<id_list.size(); i++) {
        if(id_values.length()>0) {
            id_values.append(',');
        }
        id_values.append('"').append(id_list.get(i).getUser_id()).append('"');   
    }
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

        <div class="content">
        <form name="joinForm" action="join_proc.jsp" method="post">
            <h1 class="logo_name">campYo</h1>
                <ul class="top">
                    <li>
                        <label>아이디*</label>
                        <input name="user_id" type="text" id="id">
                        <button type="button" class="btn_style1" id="idcheckcnt" onclick="id_overlap_check()">중복확인</button>
                    </li>
                    <li>   
                        <label>비밀번호*</label>
                        <input name="user_pass" type="password" id="pass">
                    </li>
                    <li>
                        <label>비밀번호확인*</label>
                        <input name="cpass" type="password" id="cpass" onblur="passCheck()">
                        <span id="pass_msg" class="pass_msg"></span>
                    </li>
                    <li>
                        <label>이름*</label>
                        <input name="user_name" type="text" id="name">
                    </li>
                    <li>
                       <label>핸드폰번호*</label>
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
                        <span class="join_message" id="join_message"></span>
                        <button type="button" onclick="joinFormCheck()" class="btn_join">가입</button>
                    </li>
                </ul>
            </form>
            </div>

<iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
<script src="../js/camp.js"></script>
<script>
function id_overlap_check(){
    var id = document.getElementById("id").value;
    var idcheckcnt = document.getElementById("idcheckcnt");
    
    var flag = true;
    var list = [ <%=id_values.toString()%>];
    //아이디 입력 여부
    if(id=="") {
        alert("아이디를 입력해주세요.");
        //return;
    }
    for(var i=0; i<list.length; i++) {
        if(id==list[i]){
            flag = false;
            break;
        }
    }
    if(flag){
        idcheckcnt.value = 1;
        alert("사용 가능한 아이디 입니다.");
        
    }else{
        idcheckcnt.value = 0;
        alert("중복된 아이디 입니다.");
        
    }
}
if('<%=join_result%>' == 'fail'){
    alert("회원가입실패");
}
/* 회원가입 성공 메시지 출력 */
if('<%=join_result%>' == 'succ'){
    alert("회원가입에 성공하셨습니다. 로그인 페이지로 이동합니다.");
}
</script>
</body>
</html>