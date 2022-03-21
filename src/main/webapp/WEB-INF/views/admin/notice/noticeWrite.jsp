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
	border-collapse: collapse;
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; 
	margin-left: 10%;
	margin-bottom: 20px;
	
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#list td{ 
	padding-right: 40px;
}

</style>
<script type="text/javascript">
function go_list(){
	var theForm = document.frm;
	theForm.action="admin_notice_list";
	theForm.submit();
}

function go_save(){
	var theForm = document.frm;
	
	if (!theForm.subject.value) {
        alert("제목을 입력해 주세요");
        theForm.subject.focus();
        return;
    }
 
    if (!theForm.content.value) {
        alert("내용을 입력해 주세요");
        theForm.content.focus();
        return;
    }
	
	theForm.action="admin_notice_write";
	theForm.submit();
	
}

</script>

<article>
<h1>공지사항 등록</h1>  
<!-- [1] 파일을 업로드 하기 위해서는 폼태그를 post 방식으로 전송하고,
인코딩 타입을 multipart/form-data 로 지정해야 한다. -->
<form name="frm" id="write_form" method="post" enctype="multipart/form-data">
<table id="list">
<tr>
  <td colspan="5">    
<tr>
  <th>제목</th>
  <td width="343" colspan="5">
       <input type="text" name="subject" id="subject" size="47" maxlength="100">
  </td>
</tr>
    
  <tr>
    <th>내용</th>
    <td colspan="5">
      <textarea name="content" id="content" rows="8" cols="70" ></textarea>
    </td>
  </tr>   
</table>
<div style="margin-left:600px">
<table id="orderList">
    <tr>
          <td colspan="2">    
      <input type="button" class="btn" value="저장" onClick="go_save()">    
      <input type="button" class="btn" value="목록" onClick="go_list()">
      </td>
      </tr>
  </table>
</div>
</form> 
</article>