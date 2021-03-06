<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>  
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

table#qnaList {
	border-collapse: collapse; /* border �궗�씠�쓽 媛꾧꺽 �뾾�빊 */
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; /* �쟾泥� �뀒�씠釉� 湲몄씠 �꽕�젙 */
	margin-left: 140px;
	margin-bottom: 20px;
	
}
td{ 
	padding: 8px 5px;
	text-align: left;
	
}

#qnaList td{ /* �뀒�씠釉붿쓽 th �� td 留덉쭊怨� �뙣�뵫 吏��젙 */
	padding-right: 40px;
}
h2, h3 {
	text-align:center;
	padding-bottom: 10px;
}

div#buttons {
    float: right;
    padding-right: 320px;
    padding-top: 50px;
}

form {
    padding-top: 30px;
}

table {
    border-collapse: collapse;
    width: 60%;
    margin-left: 300px;
}

tr {
    border: 1px solid #d7d7d7;
}
th {
    width: 30%;
    padding: 8px 5px;
    text-align: center;
}

</style> 

<script type="text/javascript">
function qna_delete_do() {
	document.formm.action = "qna_delete";
	document.formm.submit();
}
</script>
 
  <article>
      <h2> 1:1 고객 게시판 </h2>
      <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>    
	<form id="formm" name="formm" method="post">
	<input type="hidden" name="qseq" value="${qnaVO.qseq}">
    <table id="notice">
      <tr>
		<th>제목</th>
		<td>${qnaVO.subject}</td> 
      </tr>
      <tr>
        <th>등록일</th>
        <td> <fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
      </tr>
      <tr>
        <th style="height: 100px;">질문내용</th>
        <td>${qnaVO.content} 
      </tr>
      <tr>
        <th>답변 내용</th>
        <td style="white-space:pre;">${qnaVO.reply}  
      </tr>
    </table>
     <div id="buttons" style="float:right">
      <input type="button"  value="목록보기"     class="btn"  onclick="location.href='qna_list'"> 
      <input type="button"  value="쇼핑 계속하기"  class="btn"  onclick="location.href='index'">
      <input type="button"  value="삭제하기"  class="btn"  onclick="qna_delete_do()">  
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>