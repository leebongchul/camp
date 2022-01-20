function rePassFormCheck(){
    let pass, cpass, msg;
    pass=document.getElementById("pass");
    cpass=document.getElementById("cpass");
    msg=document.getElementById("rePass_message");
   
    if(pass.value==""){
        msg.innerHTML="새 비밀번호를 입력해주세요";
        pass.focus();
        return false;
    }else if(cpass.value==""){
        msg.innerHTML="새 비밀번호 확인을 입력해주세요";
        cpass.focus();
        return false;
    }else{
        rePassForm.submit();
    }  
}

function repassCheck(){
    
    let pass,cpass,name,msg;
    pass=document.getElementById("pass");
    cpass=document.getElementById("cpass");
    msg=document.getElementById("repass_checkmessage");
    
    if(pass.value!=""&&cpass.value!=""){
    if(pass.value==cpass.value){
       msg.innerHTML="비밀번호 일치";
       msg.style.color="blue";
       return true;
    }else{
        msg.innerHTML="비밀번호 불일치";
        msg.style.color="red";
        pass.value=""; cpass.value="";
        pass.focus();
        return false;
    }
    }
}