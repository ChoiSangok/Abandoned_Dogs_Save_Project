<%@page import="user.qna.dto.QnaFile"%>
<%@page import="user.qna.dto.QNA"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jQuery 2.2.4.min -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- ��Ʈ��Ʈ�� 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<% QNA viewqna = (QNA)request.getAttribute("viewqna");%>
<%QnaFile qnafile = (QnaFile)request.getAttribute("qnaFile"); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function() {
	//��Ϲ�ư ����
	$("#btnList").click(function() {
		$(location).attr("href", "/qna/list");
	});
	
	//������ư ����
	$("#btnUpdate").click(function() {
	});

	//������ư ����
	$("#btnDelete").click(function() {
	});
	
});
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<table class="table table-condensed">
	<tr>
		<th>��ȣ</th>
		<th>����</th>
		<th>�ۼ���</th>
		<th>�ۼ���</th>
		<th>����</th>
		<th>��ȸ��</th>
	</tr>
	
	
	<tr>
		<td><%=viewqna.getQnaNO()%></td>
		<td><%=viewqna.getQnaTitle()%></td>
		<td><%=viewqna.getQnaDate()%></td>
		<td><%=viewqna.getQnaWriter()%></td>
		<td><%=viewqna.getQnaContent()%></td>
		<td><%=viewqna.getQnaHit()%></td>
	</tr>
	
</table>


<div>
<a href="/upload/<%=qnafile.getQna_stored_FILR_NAME()%>"
 download="<%=qnafile.getQna_org_FILE_NAME()%>"><%=qnafile.getQna_org_FILE_NAME()%></a>
</div>


<div class="text-right">	
		<button id="btnList" class="btn btn-primary">���</button>
		<button id="btnUpdate" class="btn btn-info">����</button>
		<button id="btnDelete" class="btn btn-danger">����</button>
</div>
</div>
</body>
</html>