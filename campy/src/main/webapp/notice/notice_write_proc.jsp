<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.camp.dto.noticeDTO, com.camp.dao.noticeDAO" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto"  class="com.camp.dto.noticeDTO"></jsp:useBean>
<jsp:setProperty name="dto" property="*" />

<%
    noticeDAO dao = new noticeDAO();
    int result = dao.Insert(dto);
    if(result == 1){
        response.sendRedirect("notice_list.jsp");
    }
%>    