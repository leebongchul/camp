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

function changeFormCheck(){
    let name, hp1,hp2,hp3,email1,email2,tel, email;
    name=document.getElementById("name");
    hp1=document.getElementById("hp1");
    hp2=document.getElementById("hp2");
    hp3=document.getElementById("hp3");
    email1=document.getElementById("email1");
    email2=document.getElementById("email2");
    
    
    if(name.value==""){
        document.getElementById("change_message").innerHTML="이름을 입력해주세요";
        name.focus();
        return false;
    }else if(hp2.value==""){
        document.getElementById("change_message").innerHTML="중간번호를 입력해주세요";
        hp2.focus();
        return false;
    }else if(hp3.value==""){
        document.getElementById("change_message").innerHTML="마지막번호를 입력해주세요";
        hp3.focus();
        return false;
    }else if(email1.value==""){
        document.getElementById("change_message").innerHTML="이메일을 입력해주세요";
        email1.focus();
        return false;
    }else if(email2.value==""){
        document.getElementById("change_message").innerHTML="이메일주소를 입력해주세요";
        email2.focus();
        return false;
    }else{
        changeForm.submit();
       
    }
    
}