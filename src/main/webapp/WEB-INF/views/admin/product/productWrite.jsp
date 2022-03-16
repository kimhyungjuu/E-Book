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
	theForm.action="admin_product_list";
	theForm.submit();
}

function go_save(){
	var theForm = document.frm;
	theForm.action="admin_product_write";
	theForm.submit();
	
}

</script>

<article>
<h1>도서 등록</h1>  
<!-- [1] 파일을 업로드 하기 위해서는 폼태그를 post 방식으로 전송하고,
인코딩 타입을 multipart/form-data 로 지정해야 한다. -->
<form name="frm" id="write_form" method="post" enctype="multipart/form-data">
<table id="list">
<tr>
  <th>카테고리</th>
  <td colspan="5">
  <select name="category" id="category">
    <c:forEach items="${categoryList}" var="category" varStatus="status">
      <option value="${status.count}">${category}</option>
   </c:forEach>
  </select>      
<tr>
  <th>책제목</th>
  <td width="343" colspan="5">
       <input type="text" name="title" id="title" size="47" maxlength="100">
  </td>
</tr>
<tr>
  <th>저자</th>
  <td width="200" colspan="5">
       <input type="text" name="author" id="author" size="47" maxlength="30">
  </td>
</tr>
<tr>
  <th>대여료</th>
  <td width="70">
    <input type="text" name="price_rent" id="price_rent" size="11" onKeyUp='NumFormat(this)'>
  </td>
  
  </tr>
  <tr>
  	<th>판매가</th>
  	<td width="70">
     	<input type="text" name="price" id="price" size="11" onKeyUp='NumFormat(this)'>
  	</td>
  </tr>
    
  <tr>
    <th>책설명</th>
    <td colspan="5">
      <textarea name="content" id="content" rows="8" cols="70" ></textarea>
    </td>
  </tr>
  <tr>
    <th>책이미지</th>
    <td width="343" colspan="5">
<!--  [2] 파일 업로드를 하기 위한 input 태그는 타입 속성 값을 file로 지정해야 한다.  -->
      <input type="file" name="product_image" id="product_image">
    </td>
  </tr>    
</table>
<div style="margin-left:600px">
<input class="btn" type="button" value="등록" onClick="go_save()">           
<input class="btn" type="button" value="취소" onClick="go_mov()">
</div>
</form> 
</article>
</body>
</html>