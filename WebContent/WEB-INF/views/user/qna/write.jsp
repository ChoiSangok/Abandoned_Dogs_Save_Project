<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- jQuery 2.2.4.min -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- ��Ʈ��Ʈ�� 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
   oAppRef : oEditors
   , elPlaceHolder: "content" // �����Ͱ� ����� <textarea>�� id
   , sSkinURI: "/resources/se2/SmartEditor2Skin.html"//������ ��Ų����
   ,fCreator: "createSEditor2"
})
</script>
<script>
function submitContents(elClickedObj){
	//�������� ������ #content�� �ݿ��Ѵ� 
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
	
	try{
		elClickedObj.form.submit();
	}catch(e){}
}
</script>
<script type="text/javascript">
$(document).ready(function() {
	
	//�ۼ���ư ����
	   $("#btnWrite").click(function() {
		   //����Ʈ�������� ������ <textarea>�� �����Ѵ� 
		   submitContents($("#btnWrite"));
		   
		   $("form").submit();
	   });
	  
	
   
   //�ۼ���ư ����
   $("#btnWrite").click(function() {
      $("form").submit();
   });
   
   //��ҹ�ư ����
   $("#btnCancel").click(function() {
      history.go(-1);
   });
});
</script>
</head>
<body>
<div  class="container">
<form action="/qna/write" method="post">
	<table class="table table-hover table-condensed">
		<tr>
			<th>����</th>
			<td><input type="text" placeholder="������ �Է��ϼ���" name="qnatitel"></td>
		</tr>
		<tr>
			<th>�ۼ���</th>
			<td><input type="text" name="qnawriter"  placeholder="�̸�"></td>
		</tr>
		<tr>
			<th>÷������</th>
			<td><input type="file" name="qnafile" ></td>
		</tr>
		<tr>
			<th>����</th>
			<td><textarea name="qnacontent" placeholder="������ �Է��ϼ���"></textarea></td>
		</tr>
</table>
</form>	
<div>			
	<button id="btnWrite">���</button>
	<button id="btnCancel">���</button>
</div>			


</div>
</body>
</html>