<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 글쓰기</title>
<link href="../css/qna_write.css" rel="stylesheet">
<script src="js/qna.js"></script>
</head>
<body>

    
    <div class="content">
        <section class="qna">
            <h1>Q&A</h1>
            <form name="qna_Form" action="qna_write_proc.jsp" method="post"> 
                <table class="qna_write">
                    <tr>                    
                        <th>제목</th>
                        <td>
                            <input type="text" name="qtitle" id="qtitle" class="qtitle">
                        </td>                   
                    </tr>
                    <tr>                    
                        <th>내용</th>
                        <td>
                            <input type="text" name="qcontents" id="qcontents" class="qcontents">
                        </td>                   
                    </tr>               
                    <tr>                    
                        <td colspan="2">
                            <button type="button" class="btn btn-primary btn-md center-block" onclick="qna_FormCheck()">등록완료</button>
                            <a href="qna_list.jsp">
                                <button type="button" class="btn btn-danger btn-md center-block">목록</button>
                            </a>
                        </td>       
                    </tr>                   
                </table>
            </form>
        </section>      
        
    </div>
</body>
</html>