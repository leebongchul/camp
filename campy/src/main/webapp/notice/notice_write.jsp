<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글쓰기</title>
<link href="../css/notice_write.css" rel="stylesheet">
<script src="js/notice.js"></script>
</head>
<body>

    
    <div class="content">
        <section class="notice">
            <h1>공지사항</h1>
            <form name="notice_Form" action="notice_write_proc.jsp" method="post"> 
                <table class="notice_write">
                    <tr>                    
                        <th>제목</th>
                        <td>
                            <input type="text" name="ntitle" id="ntitle" class="ntitle">
                        </td>                   
                    </tr>
                    <tr>                    
                        <th>내용</th>
                        <td>
                            <input type="text" name="contents" id="contents" class="contents">
                        </td>                   
                    </tr>               
                    <tr>                    
                        <td colspan="2">
                            <button type="button" class="btn_style4" onclick="notice_FormCheck()">등록완료</button>
                            <a href="notice_list.jsp">
                                <button type="button" class="btn_style5">목록</button>
                            </a>
                        </td>       
                    </tr>                   
                </table>
            </form>
        </section>      
        
    </div>
</body>
</html>