<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
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
    padding-right: 240px;
    padding-top: 30px;
}

</style> 

  <article>
    <h2> 1:1 고객 게시판 </h2>
    <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
    <form name="formm" method="post">
      <table id="qnaList">
      <tr>
        <th>번호</th> <th>제목</th> <th>등록일</th> <th>답변 여부</th>    
      </tr>
      <c:forEach items="${ListQnA}"  var="qnaVO">
      <tr>  
        <td> <a href="qna_view?qseq=${qnaVO.qseq}"> ${qnaVO.qseq} </td>    
        <td> <a href="qna_view?qseq=${qnaVO.qseq}"> ${qnaVO.subject} </td>      
        <td> <fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
        <td> 
      	<c:choose>
   	 		<c:when test='${qnaVO.rep=="n"}'>(미처리)</c:when>
   	 		<c:otherwise>(답변처리완료)</c:otherwise>  	 		
   	 	</c:choose>
        </td>    
      </tr>
      </c:forEach>    
      </table>
      <div class="clear"></div>
      <div id="buttons" style="float:right">
      <input type="button"  value="1:1 질문하기"  class="btn"    onclick="location.href='qna_write_form'"> 
      <input type="button"    value="쇼핑 계속하기"  class="btn"  onclick="location.href='index'">  
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>