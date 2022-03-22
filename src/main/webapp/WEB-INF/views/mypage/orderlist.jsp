<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
 <%@ include file="../header.jsp" %>
<head>
<style>
      table, th, td {
        border: 1px solid #bcbcbc;
        
      }
      table {
    width: 800px;
    margin-left:auto; 
    margin-right:auto;
  }
  article {
  text-align: center;
  }
  .jb-th-1 {
    width: 800px;
    }
    .jb-th-2 {
    width: 500px;
    }
 
</style>
</head> 
  
 
  <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">홈</a></li>
                    <li class="breadcrumb-item"><a href="#">마이 페이지</a></li>
                    <li class="breadcrumb-item active">주문 목록</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
       
        
      <article>
      <h2> 내 서재 </h2>
      <form name="orderlist" method="post">
        <table id="cartList">
       <tr>
        <th class="jb-th-1">책 이름</th> <th>가 격</th> <th class="jb-th-2">주문일</th>   
       </tr>
       <c:forEach items="${orderlist}"  var="orderVO">
       <tr>      
        <td>
            <a href="order_detail?oseq=${orderVO.oseq}">
              <h3> ${orderVO.title} </h3>              
          </a>    
        </td>
        <td> <fmt:formatNumber value="${orderVO.price}" type="currency"/> </td>
              
        <td> <fmt:formatDate value="${orderVO.indate}" type="date"/></td>
        
       </tr>
       </c:forEach>
      </table>   
          
      <div class="clear"></div>
      <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  onclick="location.href='index'">     
      </div>
    </form>  
  </article>

		


 <%@ include file="../footer.jsp" %>
</html>