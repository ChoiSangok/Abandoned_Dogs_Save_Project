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
<!DOCTYPE html>
<html>
<head>
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
		<th>��ȸ��</th>
	</tr>
	
	
	<tr>
		<td><%=viewqna.getQnaNO()%></td>
		<td><%=viewqna.getQnaTitle()%></td>
		<td><%=viewqna.getQnaDate()%></td>
		<td><%=viewqna.getQnaWriter()%></td>
		<td><%=viewqna.getQnaHit()%></td>
	</tr>
	
</table>


<div class="text-right" id="wrapped">
	<button id="btnWrite" >����</button>
	<button id="btnWrite" >����</button>
	<button id="btnWrite" >���</button>
</div>

</div>
</body>
</html>