<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
table#qnaList {
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

#qnaList td{ 
	padding-right: 40px;
}
</style>

<body>
<article>
<h1>Q&#38;A 리스트</h1>	<br><br><br>
<form name="frm" method="post">
<input type="hidden" name="qseq">  
<table id="qnaList">
    <tr>
         <th>제목</th> <th>작성자</th> <th>작성일</th>  <th>번호(답변여부)</th>
    </tr>
	<c:forEach items="${qnaList}" var="qnaVO">
    <tr>
      <td>   
          <a href="admin_qna_detail?qseq=${qnaVO.qseq}"> 
    	 ${qnaVO.subject}     
   		</a>
   	  </td>
   	  <td> ${qnaVO.id} </td>
      <td><fmt:formatDate value="${qnaVO.indate}"/></td>
      <td>
      	<c:choose>
   	 		<c:when test='${qnaVO.rep=="n"}'>(미처리)</c:when>
   	 		<c:otherwise>(답변처리완료)</c:otherwise>  	 		
   	 	</c:choose>
   	  </td> 
    </tr>
    </c:forEach>
</table>
</form> 
</article>
</body>
