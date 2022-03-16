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
table#noticeList {
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

#noticeList td{ /* �뀒�씠釉붿쓽 th �� td 留덉쭊怨� �뙣�뵫 吏��젙 */
	padding-right: 40px;
}
</style>
<script type="text/javascript">
  function go_view(nseq) {
    var theForm = document.frm;
    theForm.nseq.value = nseq;
    theForm.action = "admin_notice_detail";
    theForm.submit();
  }
  function go_wrt() {
	  var theForm = document.frm;
	  theForm.action = "admin_notice_write_form";
	  theForm.submit();
	}
</script>

<article>
<h1>공지사항 게시글 리스트</h1>  
<form name="frm" method="post" id="prod_form" >
<table style="margin-left:400px">
  <tr>
  <td width="642">
     <input class="btn" type="button" name="btn_write" value="공지등록" onClick="go_wrt()">
  </td>
  </tr>
</table>
<input type="hidden" name="nseq">  
<table id="noticeList">
  <tr>
    <th>번호</th> <th>제목</th> <th>내용</th> <th>작성일</th>    
  </tr>
  <c:forEach items="${noticeList}" var="noticeVO">  
      <tr>
      <td>
      ${noticeVO.nseq}       
      </td>
      <td> 
      <a href="admin_notice_detail?nseq=${noticeVO.nseq}">
        ${noticeVO.subject} 
      </a>
      </td>
      <td> ${noticeVO.content} </td>
      <td> <fmt:formatDate value="${noticeVO.indate}"/></td>
      </tr>
    </c:forEach>
    </table>
    </form>    
  </article>
</body>
</html>