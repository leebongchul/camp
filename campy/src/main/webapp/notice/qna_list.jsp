<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.camp.dto.qnaDTO,com.camp.dao.qnaDAO, java.util.ArrayList"%>
    
    <%
        qnaDAO dao = new qnaDAO();
        ArrayList<qnaDTO> list = dao.noticSelect();
         //String lid = (String)session.getAttribute("lid");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canvas</title>
<link href="../css/qna_list.css" rel="stylesheet">
<link href="../css/campyo.css" rel="stylesheet">
<script src="js/camp.js"></script>
</head>
<body>
    <div id="mainWrapper">

        <ul>
            <!-- 게시판 제목  -->
            <li>Q & A</li>

            <!-- 게시판 목록  -->
            <li>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성일</li>
                            <li>작성자</li>
                            <li>조회수</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
                    <!-- 게시물이 출력될 영역 -->
                    <%for(qnaDTO dto : list) {%>
                    <li>
                        <ul>
                            <li><%=dto.getQna_num()%> </li>
                            <li class="left"><%=dto.getQna_tittle() %></li>
                            <li><%=dto.getQna_regdate() %></li>
                            <li><%=dto.getQna_writer() %></li>
                     
                        </ul>
                    </li>
                        <%} %>
                    <li>
                        <a href="qna_write.jsp"><button type="button" class="btn btn-primary btn-md center-block">글쓰기</button></a>
                        <a href="qna_update.jsp"><button type="button" class="btn btn-danger btn-md center-block">수정</button></a>
                        <a href="qna_delite.jsp"><button type="button" class="btn btn-danger btn-md center-block">삭제</button></a>
                    <li>                                        
                </ul>
            </li>

            <!-- 게시판 페이징 영역 -->
            <li>
                <div id="divPaging">
                    <div>◀</div>
                       <div><b>1</b></div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>▶</div>
                </div>
            </li>

            <!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
                <div>
                    <select id='selSearchOption' >
                        <option value='A'>제목+내용</option>
                        <option value='T'>제목</option>
                        <option value='C'>내용</option>
                    </select>
                    <input id='txtKeyWord' />
                    <input type='button' value='검색'/>
                </div>
                </li>

        </ul>
    </div>
</body>
</html>
