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
  function go_order_save() {
    var count = 0;
    if (document.frm.result.length == undefined) {
      if (document.frm.result.checked == true) {
        count++;
      }
    } else {
      for ( var i = 0; i < document.frm.result.length; i++) {
        if (document.frm.result[i].checked == true) {
          count++;
        }
      }
    }
    if (count == 0) {
      alert("주문처리할 항목을 선택해 주세요.");
    } else {
      document.frm.action = "admin_order_save";
      document.frm.submit();
    }
  }
  
  function go_search() {
	var theForm = document.frm;
	theForm.action =  "admin_order_list";
	theForm.submit();
  }
</script>
<article>
<h1>주문리스트</h1>
<form name="frm" method="post">
  <table style="float: right;">
    <tr>
      <td>주문자 이름 <input type="text" name="key"> 
      <input class="btn" type="button" value="검색" onclick="go_search()">
      </td>
    </tr>
  </table>
  <br>
  <table id="orderList">
  <tr>
    <th>주문번호(처리여부)</th><th>주문자</th><th>책제목</th>
    <th>주문일</th>
  </tr>
  <c:forEach items="${orderList}" var="orderVO">
  <tr>
    <td>
      <c:choose>
        <c:when test='${orderVO.result=="n"}'>
        <span style="font-weight: bold; color: blue">${orderVO.odseq}</span>
        (<input type="checkbox" name="result" value="${orderVO.odseq}"> 미처리)
        </c:when>
        <c:otherwise>
          <span style="font-weight: bold; color: red">${orderVO.odseq}</span>
          (<input type="checkbox" checked="checked" disabled="disabled">처리완료)
        </c:otherwise>
      </c:choose>
    </td>
    <td>${orderVO.mname}</td> <td>${orderVO.title}</td>
    <td><fmt:formatDate value="${orderVO.indate}" /></td>
  </tr>
  </c:forEach>
  </table>
  <input type="button" class="btn" style="width: 200px; margin-left: 650px;"
      value="주문처리(입금확인)" onClick="go_order_save()">
      
</form>
</article>
</body>
</html>