<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ include file="../header.jsp" %>   
 <head>
 <style>
 table, th, td {
        border: 1px solid #bcbcbc;
      }
      table {
    width: 600px;
     margin-left:auto; 
    margin-right:auto;
  } 
  form {
  text-align:center;
  } 
  </style>
  </head>   
  <article>
    
    <form name="formm" method="post">
      <h3> 주문자 정보 </h3>     
      <table id="cartList">      
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>주문자</th><th> 주문 총액</th>     
     </tr>     
     <tr>  
       <td> <fmt:formatDate value="${orderDetail.indate}" type="date"/></td>
       <td> ${orderDetail.oseq} </td>    
       <td> ${orderDetail.mname} </td>
       <td> <fmt:formatNumber type="currency" 
		value="${totalPrice}" /> </td>
     </tr>    
     </table> <br>        
     <h3> 주문 상품 정보 </h3> 
     <table id="cartList">
     <tr>
       <th>상품명</th> <th>상품별주문번호</th>
 <th>가격</th> <th>처리 상태</th>    
     </tr>
     <c:forEach items="${orderList}"  var="orderVO">
     <tr>
       <td> ${orderVO.title} </td>
       <td> ${orderVO.odseq} </td>          
       <td> <fmt:formatNumber type="currency"
value="${orderVO.price}" /> </td>
       <td>
         <c:choose>
         <c:when test='${orderVO.result=="n"}'> 진행중 </c:when>
         <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
         </c:choose>
       </td>
     </tr>
     </c:forEach>    
     </table>   
          
     <div class="clear"></div>
     <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  
onclick="location.href='index'">
     </div>
    </form>  
  </article>
<%@ include file="../footer.jsp" %>