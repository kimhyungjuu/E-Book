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
table#productList {
	border-collapse: collapse; 
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; 
	margin-left: 9%;
	margin-bottom: 20px;
	
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#productList td{ 
	padding-right: 40px;
}
</style>

<script>
function go_wrt() {
   var theForm = document.frm;
   theForm.action =  "admin_product_write_form";
   theForm.submit();
  }
</script>

<body>
<article>
<h1>책 리스트</h1>	
<form name="frm" id="prod_form" method="post">
<table style="margin-left:70%">
  <tr>
  <td width="642">
     <input class="btn" type="button" name="btn_write" value="책 등록" onClick="go_wrt()">
  </td>
  </tr>
</table>
<table id="productList">
    <tr>
        <th>번호</th><th>책제목</th><th>작가</th><th>대여료</th><th>판매가</th><th>등록일</th><th>사용유무</th>
    </tr>
    <c:choose>
    <c:when test="${productListSize<=0}">
    <tr>
      <td width="100%" colspan="7" align="center" height="23">
        등록된 상품이 없습니다.
      </td>      
    </tr>
    </c:when>
	<c:otherwise>
	<c:forEach items="${productList}" var="productVO">
    <tr>
      <td height="23" align="center" >${productVO.bseq}</td>
      <td style="text-align: left; padding-left: 50px; padding-right: 0px;">   
         <a href="admin_product_detail${pageMaker.makeQuery(pageMaker.criteria.pageNum)}&bseq=${productVO.bseq}"> 
          <%--<a href="admin_product_detail?bseq=${productVO.bseq}"> --%>
 		<%--<a href="admin_product_detail" onclick="go_detail('${productVO.bseq}')">--%>
    	 ${productVO.title}     
   		</a>
   	  </td>
   	  <td> ${productVO.author} </td>
      <td><fmt:formatNumber value="${productVO.price_rent}"/> 원</td> 
      <td><fmt:formatNumber value="${productVO.price}"/> 원</td> 
      <td><fmt:formatDate value="${productVO.regdate}"/></td>
      <td>
      	<c:choose>
   	 		<c:when test="${fn:contains(productVO.useyn, 'n')}">미사용</c:when>
   	 		<c:otherwise>사용</c:otherwise>  	 		
   	 	</c:choose>
   	  </td> 
    </tr>
    </c:forEach>
    <tr><td colspan="6" style="text-align: center;"> ${paging} </td></tr>
	</c:otherwise>	
</c:choose>  
</table>
</form> 
<%@ include file="../page_area.jsp" %>
</article>
</body>
