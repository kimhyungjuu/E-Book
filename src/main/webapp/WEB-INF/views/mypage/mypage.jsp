<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>   
<%@ include file="sub_menu(order).jsp" %>       
  <article>
    <h2>${title}</h2>
    <form name="formm" method="post">
      <table id="cartList">
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>책 이름</th> <th>결제 금액</th> <th>주문 상세</th> </th>    
      </tr>
      <c:forEach items="${orderList}"  var="orderVO">
      <tr>  
        <td> <fmt:formatDate value="${orderVO.indate}" type="date"/></td>
        <td> ${orderVO.oseq} </td>    
        <td> ${orderVO.title} </td>
        <td> <fmt:formatNumber value="${orderVO.price}" type="currency"/> </td>
        <td> <a href="order_detail?oseq=${orderVO.oseq}"> 조회 </a></td>
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