
/***************************************
*   공지사항 글쓰기화면  폼체크
*********************************** ****/
function notice_FormCheck(){
    let ntitle;
    ntitle = document.getElementById("ntitle");
     
    if(ntitle.value == ""){
        alert("제목을 입력해주세요");
        ntitle.focus();
        return false;
    }else{
        noticeWriteForm.submit();
    }
    
}
 
function notice_AdminCheck(lid){
          alert(lid);
          // alert('글쓰기호출');
         
           if(lid === "admin1"){
               location.href="notice_write.jsp";
        }else{
            alert("관리자 권한이없는 계정 입니다!");
            location.href="notice_list.jsp";
        }
    }
