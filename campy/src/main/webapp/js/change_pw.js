function changePwFormCheck(){
    let pass, npass , ncpass, msg;
    pass=document.getElementById("user_pass");
    npass=document.getElementById("next_pass");
    ncpass=document.getElementById("next_cpass");
    msg=document.getElementById("cpw_msg");
    
    if(pass.value==""){
        msg.innerHTML="현재 비밀번호를 입력해주세요";
        pass.focus();
        
      }else if(npass.value==""){
        msg.innerHTML="변경할 비밀번호를 입력해주세요";
        npass.focus();
    }else if(ncpass.value==""){
        msg.innerHTML="변경할 비밀번호 확인을 입력해주세요";
        ncpass.focus();
    }else{
        msg.innerHTML="";
        changepwForm.submit();
    }
   
}

function passCheck(){
    let pass,npass , ncpass, msg,cmsg;
    pass=document.getElementById("user_pass");
    npass=document.getElementById("next_pass");
    ncpass=document.getElementById("next_cpass");
    msg=document.getElementById("npass_msg");
    cmsg=document.getElementById("cpw_msg");
    if(npass.value!=""&&ncpass.value!=""){
    if(npass.value==ncpass.value){    
        if(npass.value==pass.value){
            cmsg.innerHTML="현재 비밀번호와 다른 비밀번호를 입력해주세요";
            npass.value=""; ncpass.value="";
            npass.focus();
            
        }else if(npass.value!=pass.value){
            msg.innerHTML="비밀번호 일치";
            cmsg.innerHTML="";
             msg.style.color="blue";
              return true;  
        }
     
    }else{
        msg.innerHTML="비밀번호 불일치";
        cmsg.innerHTML="변경할 비밀번호를 입력해주세요";
        msg.style.color="red";
        npass.value=""; ncpass.value="";
        npass.focus();
        return false;
    }
    }
}