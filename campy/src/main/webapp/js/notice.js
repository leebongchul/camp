
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