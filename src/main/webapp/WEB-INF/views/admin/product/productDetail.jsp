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
#list{
	margin-left: 620px;
}
#list td{ 
	padding: 8px 5px;
	text-align: left;
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}
</style>

<script type="text/javascript">
function go_list(){
	var theForm = document.frm;
	theForm.action="admin_product_list";
	theForm.submit();
}
</script>

<article>
<h1>상품 상세 보기</h1> 
<br>
<form name="frm" id="detail_form" method="post">
<table id="list">
  <tr>
    <th>상품분류</th>
    <td  colspan="5">
  ${productVO.category}
     </td>    
    </tr>    
    <tr>
        <th align="center" >책제목</th>
        <td colspan="5">${productVO.title}</td>
    </tr>
    
    <tr>
        <th align="center" >저자</th>
        <td colspan="5">${productVO.author}</td>
    </tr>
    
    <tr>
        <th>대여료</th>
        <td width="60">${productVO.price_rent}</td>
    </tr>
    
    <tr>
        <th>판매가</th>
        <td width="60">${productVO.price}</td>
    </tr>
     
    <tr>
        <th>상세설명</th>
        <td colspan="5">${productVO.content}</td>
    </tr>
    
    <tr>
     <th>상품이미지</th>
     <td colspan="5" align="center">
  <!--[7] 상품 이미지를 출력하기 -->     
     <img src="product_images/${productVO.image}" width="200pt">    
     </td>
    </tr>

</table>
<br><br>
<!--[8] 수정 버튼이 눌리면 상품 수정 페이지로 이동하되 현재 페이지와 상품 일련번호 값을 전달해 준다. --> 
<div style="margin-left:620px">
<input class="btn"  type="button" value="수정" onClick="location.href='admin_product_update_form?bseq=${productVO.bseq}'">
<!--[9] 목록 버튼이 눌리면 상품 리스트 페이지로 이동하되 현재 페이지를 전달해 준다. --> 
<input class="btn"  type="button" value="목록" onClick="go_list()">    
</div>      
</form>
</article>
</body>
</html>






