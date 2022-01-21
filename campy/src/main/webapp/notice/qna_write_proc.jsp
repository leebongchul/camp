<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.camp.dto.qnaDTO, com.camp.dao.qnaDAO" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto"  class="com.camp.dto.qnaDTO"></jsp:useBean>
<jsp:setProperty name="dto" property="*" />

<%
    qnaDAO dao = new qnaDAO();
    int result = dao.Insert(dto);
    if(result == 1){
        response.sendRedirect("qna_list.jsp");
    }
%>    