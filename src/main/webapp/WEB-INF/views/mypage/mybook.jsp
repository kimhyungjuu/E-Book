<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu(book).jsp" %> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  		<!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">홈</a></li>
                    <li class="breadcrumb-item"><a href="#">마이 페이지</a></li>
                    <li class="breadcrumb-item active">내 서재</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <article>
        <form name="orderlist" method="post">
        <table id="buybook">
        <h1>구매 목록</h1>
        <tr>
        <th>책 이름</th> <th>저자</th><th>주문일</th>
        </tr>
        <c:forEach items="${orderList}"  var="orderVO">
       <tr>      
        <td>
            <a href="product_detail?pseq=${orderVO.bseq}">
              <h3> ${orderVO.title} </h3>              
          </a>    
        </td>
        <td> ${orderVO.author} </td>
        <td> <fmt:formatDate value="${orderVO.indate}" type="date"/></td>
        </tr>
        </c:forEach>
        </table>
        
        </form>
        </article>
</body>
</html>