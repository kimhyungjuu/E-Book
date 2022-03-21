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
table#orderList {
	border-collapse: collapse; 
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; 
	margin-left: 140px;
	margin-bottom: 20px;
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#orderList td{ 
	padding-right: 40px;
}
</style>
<script type="text/javascript">
  function go_search(name)
  {
     //document.frm.action="admin_member_list?key="+name;
     document.frm.action="admin_member_list";
     document.frm.submit();
  }
</script>

<article>
<h1>회원리스트</h1>  
<form name="frm" method="post">
<table style="float:right; ">
  <tr>
  <td> 
  회원 이름
  <input type="text" name="key" id="key">
  <input class="btn" type="button" value="검색" onclick="go_search(this.key)">
  </td>
  </tr>
</table>  
<br>
<table id="orderList">
  <tr>
    <th> 아이디(탈퇴여부) </th>    <th> 이름 </th>
    <th> 이메일 </th>             <th> 우편번호 </th>  
    <th> 주소 </th>  <th> 전화 </th>  <th> 가입일 </th>
  </tr>
  <c:forEach items="${memberList}" var="memberVO">  
  <tr>
    <td>${memberVO.id} 
    <c:choose>
      <c:when test="${memberVO.useyn=='y'}">
        <input type="checkbox" name="useyn" disabled="disabled">
      </c:when>
      <c:otherwise>
        <input type="checkbox" name="useyn" 
checked="checked" disabled="disabled">
      </c:otherwise>
    </c:choose>
    </td>
    <td> ${memberVO.name} </td>
    <td> ${memberVO.email} </td> 
    <td> ${memberVO.zip_num} </td>
    <td> ${memberVO.address} </td>
    <td> ${memberVO.phone} </td> 
    <td> <fmt:formatDate value="${memberVO.regdate}"/></td>
  </tr>
  </c:forEach>
</table>
</form>
</article>
</body>
</html>