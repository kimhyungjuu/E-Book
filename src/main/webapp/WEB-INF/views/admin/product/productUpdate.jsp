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

function go_mod_save(){
	var theForm = document.frm;
	theForm.action="admin_product_update";
	theForm.submit();
}

function go_del(){
	var theForm = document.frm;
	theForm.action="admin_product_delete";
	theForm.submit();
}
</script>

<article>
<h1>상품수정</h1>  
<form name="frm" id="update_form" method="post" enctype="multipart/form-data">
<input type="hidden" name="bseq" value="${productVO.bseq}">
<input type="hidden" name="code" >
<input type="hidden" name="nonmakeImg" value="${productVO.image}"> <!-- 기존 이미지 저장  -->
<table id="list">
  <tr>
    <th>카테고리</th>
    <td colspan="5">
    <select name="category" id="category">
      <c:forEach items="${categoryList}" var="category" varStatus="status">
        <c:choose>
          <c:when test="${productVO.category==status.count}">
            <option value="${status.count}" selected="selected">${category}</option>
          </c:when>
          <c:otherwise>
            <option value="${status.count}">${category}</option>
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </select> 
    </td>
  </tr>
  <tr>
    <th>책제목</th>
    <td width="343" colspan="5">
      <input type="text" name="title" id="title" size="47" maxlength="100" value="${productVO.title}">
    </td>
  </tr>
  <tr>
    <th>저자</th>
    <td width="343" colspan="5">
      <input type="text" name="author" id="author" size="47" maxlength="100" value="${productVO.author}">
    </td>
  </tr>
  <tr>
    <th>대여료</th>
    <td width="70">        
      <input type="text" name="price_rent" id="price_rent" size="11" onKeyUp='NumFormat(this)' value="${productVO.price_rent}">
    </td>
    </tr>
  <tr>
    <th>판매가</th>
    <td width="70">
      <input type="text" name="price" id="price" size="11" onKeyUp='NumFormat(this)' value="${productVO.price}">
    </td>
  </tr>
  <tr>
    <th>찜여부</th>
    <td>
      <c:choose>
        <c:when test="${fn:contains(productVO.likeyn, 'y')}">
          <input type="checkbox" name="likeyn" value="y" id="likeyn" checked="checked">
        </c:when>
        <c:otherwise>
          <input type="checkbox" name="likeyn" value="n" id="likeyn" >
        </c:otherwise>
      </c:choose>
    </td>     
    </tr>
  <tr>   
    <th>사용유무</th>
    <td>
      <c:choose>
        <c:when test="${fn:contains(productVO.useyn, 'y')}">
          <input type="checkbox" name="useyn" id="useyn" value="y" checked="checked">
        </c:when>
      <c:otherwise>
        <input type="checkbox" name="useyn" id="useyn" value="n">
      </c:otherwise>
    </c:choose>
    </td>
  </tr>
  <tr>
    <th>상세설명</th>
    <td colspan="5">
      <textarea name="content" id="content" rows="8" cols="70" >${productVO.content}</textarea>
    </td>
  </tr>
  <tr>
    <th>책이미지</th>
    <td colspan="5">
      <img src="product_images/${productVO.image}" width="200pt">     
      <br>
      <input type="file" name="product_image" id="product_image">
      <input type="hidden" name="image" value="${productVO.image}">
    </td> 
  </tr>    
</table>
<div style="margin-left:620px">
<input class="btn" type="button" value="수정" onClick="go_mod_save('${productVO.bseq}')">         
<input class="btn" type="button" value="삭제" onClick="go_del()">        
<input class="btn" type="button" value="취소" onClick="go_mov()">
</div>
</form> 
</article>
</body>
</html>