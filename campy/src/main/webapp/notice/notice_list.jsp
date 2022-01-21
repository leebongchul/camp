<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.camp.dto.noticeDTO,com.camp.dao.noticeDAO, java.util.ArrayList"%>
    <%
        noticeDAO dao = new noticeDAO();
        ArrayList<noticeDTO> list = dao.noticSelect(); 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canvas</title>
<link href="../css/notice_list.css" rel="stylesheet">
<link href="../css/campyo.css" rel="stylesheet">
<script src="js/camp.js"></script>
</head>
<body>

        <ul>
            <!-- 게시판 제목  -->
            <li class="notice_list_title">공지사항</li>

    <div id="mainWrapper">
                        <a href="notice_write.jsp"><button type="button" class="btn_style3">글쓰기</button></a>
 
            <!-- 게시판 목록  -->
            <li>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성일</li>
                            <li>작성자</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
                    <%for(noticeDTO dto : list) {%>
                    <li>
                        <ul>
                            <li><%=dto.getNotice_num() %></li>
                            <li class="left"><%=dto.getNotice_tittle() %></li>
                            <li><%=dto.getNotice_regdate() %></li>
                            <li><%=dto.getNotice_writer() %></li>
                     
                        </ul>
                    </li>
                        <%} %>
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
