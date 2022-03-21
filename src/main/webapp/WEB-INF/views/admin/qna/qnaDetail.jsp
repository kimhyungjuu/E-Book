<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
h1 {
	text-align: center;
}
header {
	height: 151px;
}

body {
	background-color: white;
	margin: 0;
	padding: 0;
	font-size: 0.75em;
	line-height: 1.2em;
	color: #333;
}

a {
	text-decoration: none;
	color: #333;
}
.btn {
	width: 100px;
	border-radius: 5px;
	background-color: #FC3;
	color: #333;
	box-shadow: 3px 3px 3px #999999;
	text-decoration: none;
	text-align: center;
	padding: 5px;
	margin: 0 7px 7px 0px;
}
article {
	min-height: 600px;
}

th {
	background-color: #E4E4E4;
}
th, td{ 
	padding: 8px 5px;
	
}
table#orderList {
	border-collapse: collapse; 
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 85%; 
	margin-left: 7%;
	margin-bottom: 20px;
}
</style>
<script type="text/javascript">
   function go_list()
   {
	   var theForm = document.frm;
	   theForm.action="admin_qna_list";
	   theForm.submit();
   }

   function go_rep(qseq)
   {
	   var theForm = document.frm;
	   if(confirm("답변등록 하시겠습니까?")==true){
	   //theForm.qseq.value=qseq;
	   theForm.action="admin_qna_repsave";
	   theForm.submit();
	   alert("답변이 등록되었습니다.");
	   }else{
		   return;
	   }
   }   
</script>
<article>
<h1>Q&amp;A 답변등록</h1>   
<form name="frm" method="post">
<input type="hidden" name="qseq" value="${qnaVO.qseq}">
<table id="orderList">
    <tr>
        <th width="20%">제목</th>
        <td> ${qnaVO.subject} ${qnaVO.rep} </td>
    </tr>
   <tr>
         <th>등록일</th>
         <td> <fmt:formatDate value="${qnaVO.indate}"/> </td>  
    </tr>
    <tr>
        <th>내용</th>
        <td > ${qnaVO.content}</td>  
    </tr>
</table>
<c:choose>          
  <c:when test='${qnaVO.rep=="n"}'>
  <table id="orderList">
    <tr>
          <td colspan="3">    
      <textarea name="reply" rows="3" cols="50"></textarea><br><br><br>
      <input type="button" class="btn" value="저장" onClick="go_rep('${qnaVO.qseq}')">    
      <input type="button" class="btn" value="목록" onClick="go_list()">
      </td>
      </tr>
  </table>
  <br>
  </c:when>
  <c:otherwise>  
  <table id="orderList">
    <tr>
     <th>댓글</th>
     <td style="white-space:pre;"> ${qnaVO.reply}</td>
    </tr>
  </table>
  </c:otherwise>
</c:choose>    

</form>
</article>
</body>
</html>