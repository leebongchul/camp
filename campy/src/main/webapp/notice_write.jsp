<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글쓰기</title>
<link href="../css/notice_write.css" rel="stylesheet">
<script src="js/camp.js"></script>
</head>
<body>
	<!-- header start -->
    <iframe class="h" src="../header.jsp" scrolling="no" width="100%" height="90"></iframe>

	
	<div class="content">
		<section class="login">
			<h1>게시판</h1>
			<form name="notice_Form" action="" method="post"> <!-- 액션 추가필요   -->
				<table class="notice_write">
					<tr>					
						<th>제목</th>
						<td>
							<input type="text" name="ntitle" id="ntitle">
						</td>					
					</tr>
					<tr>					
						<th>내용</th>
						<td>
							<textarea name="ncontent"></textarea>
						</td>					
					</tr>				
					<tr>					
						<td colspan="2">
							<button type="button" class="btn_style3" onclick="notice_FormCheck()">등록완료</button>
							<a href="notice_list.jsp">
								<button type="button" class="btn_style3">목록</button>
							</a>
							<a href="main.jsp">
							</a>
						</td>		
					</tr>					
				</table>
			</form>
		</section>		
		
	</div>
	
	<!-- footer start -->
	        <iframe class="f" src="../footer.jsp" scrolling="no" width="100%" height="50"></iframe>
	
</body>
</html>







