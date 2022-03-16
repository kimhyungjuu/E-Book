<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
h1 {
	text-align: center;
}
header {
	height: 100px;
}

body {
	background-color: white;
	margin: 0;
	padding: 0;
	font-size: 1.0em;
	line-height: 1.2em;
	color: #333;
}

a {
	text-decoration: none;
	color: #333;
}
th {
	background-color: #E4E4E4;
}
article {
	min-height: 600px;
}
.btn {
	width: 100px;
	border-radius: 5px;
	background-color: #FF6F61;
	color: #333;
	box-shadow: 3px 3px 3px #999999;
	text-decoration: none;
	text-align: center;
	padding: 5px;
	margin: 0 7px 7px 0px;
}
table#list {
	border-collapse: collapse; /* border �궗�씠�쓽 媛꾧꺽 �뾾�빊 */
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; /* �쟾泥� �뀒�씠釉� 湲몄씠 �꽕�젙 */
	margin-left: 140px;
	margin-bottom: 20px;
	
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#list td{ /* �뀒�씠釉붿쓽 th �� td 留덉쭊怨� �뙣�뵫 吏��젙 */
	padding-right: 40px;
}
</style>

<script type="text/javascript">
function go_mov(){
	var theForm = document.frm;
	theForm.action="admin_notice_list";
	theForm.submit();
}

function go_mod_save(){
	var theForm = document.frm;
	theForm.action="admin_notice_update";
	theForm.submit();
}
</script>

<article>
<h1>공지 수정</h1>  
<form name="frm" id="update_form" method="post" enctype="multipart/form-data">
<input type="hidden" name="nseq" value="${noticeVO.nseq}">
<input type="hidden" name="code" >
<table id="list">
  <tr>
    <th>제목</th>
    <td width="343" colspan="5">
      <input type="text" name="subject" id="subject" size="47" maxlength="100" value="${noticeVO.subject}">
    </td>
  </tr>
  <tr>
    <th>내용</th>
    <td width="343" colspan="5">
      <input type="text" name="content" id="content" size="47" maxlength="100" value="${noticeVO.content}">
    </td>
  </tr>
  
</table>
<div style="margin-left:620px">
<input class="btn" type="button" value="수정" onClick="go_mod_save()">       
<input class="btn" type="button" value="취소" onClick="go_mov()">
</div>
</form> 
</article>
</body>
</html>