<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite_jimin/assets/css/board.css" rel="stylesheet" type="text/css">
<title>Mysite</title>
</head>
<body>
	<div id="container">
		
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		
		<div id="content">
			<div id="board">
				<form class="board-form" method="post" action="/mysite_jimin/fileUploadRe" enctype="multipart/form-data">
					<input type="hidden" name="no" value="${boardVo.no}" />
					<table class="tbl-ex">
						<tr>
							<th colspan="2">글수정</th>
						</tr>
						<tr>
							<td class="label">제목</td>
							<td><input type="text" name="title" value="${boardVo.title}"></td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td>
								<textarea id="content" name="content">${boardVo.content}</textarea>
							</td>
						</tr>
					</table>
					<div class="file_wrap">
						<p>
							<input type="hidden" name="file_o" value="${boardVo.filename}" readonly="readonly">
							<input type="text" name="file_sub" value="${boardVo.fileName_sub}" readonly="readonly">
						</p>
						<br />
					            파일1 : <input type="file" name="file1" multiple>
				    </div>
					<div class="bottom">
						<a href="/mysite_jimin/board">취소</a>
						<input type="submit" value="수정">
					</div>
				</form>				
			</div>
		</div>

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		
	</div><!-- /container -->
</body>
</html>		
		
