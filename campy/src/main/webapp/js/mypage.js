function exitFormCheck(){
    let id, pass, msg;
    id=document.getElementById("id");
    pass=document.getElementById("pass");
    msg = document.getElementById("exit_message");
    
    if(id.value==""){
        msg.innerHTML="아이디를 입력해주세요";
        id.focus();
        return false;
    }else if(pass.value==""){
        msg.innerHTML="비밀번호를 입력해주세요";
        pass.focus();
        return false;
    }else if(confirm("정말 탈퇴하시겠습니까 ?") == true){
        exitForm.submit();
    }
}