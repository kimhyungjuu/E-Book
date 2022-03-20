<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
 <%@ include file="../header.jsp" %>

  
 
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
        
<%@ include file="sub_menu(order).jsp" %>
        
      <article>
      <h2> 총 주문 내역 </h2>
      <form name="orderlist" method="post">
        <table id="cartList">
       <tr>
        <th>책 이름</th> <th>가 격</th> <th>주문일</th> <th> 진행 상태 </th>    
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
        <td> 처리 진행 중 </td>
       </tr>
       </c:forEach>
       <tr>
         <th colspan="2"> 총 액 </th>
         <th colspan="2"> <fmt:formatNumber value="${totalPrice}" type="currency"/><br></th> 
         <th> 주문 처리가 완료되었습니다. </th>                
       </tr> 
      </table>   
          
      <div class="clear"></div>
      <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  onclick="location.href='index'">     
      </div>
    </form>  
  </article>

		


 <%@ include file="../footer.jsp" %>
</html>