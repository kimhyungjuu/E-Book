<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
 <%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>
</head>
  
 <body>
        
    <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">홈</a></li>
                    <li class="breadcrumb-item"><a href="#">마이 페이지</a></li>
                    <li class="breadcrumb-item active">위시리스트</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <c:choose>
        <c:when test= "${wishlist.size() == 0}">
      		<h3 style="color: red;text-align: center;"> 위시리스트가 비었습니다. </h3> 
    	</c:when>
    	<c:otherwise>
    	</c:otherwise>
    	</c:choose>
        <!-- Wishlist Start -->
        <div class="wishlist-page">
            <div class="container-fluid">
                <div class="wishlist-page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Add to Cart</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <c:forEach items="${wishList}"  var="cartVO">
                                        <tr>
                                            <td>
                                                <div class="img">
                                                    <a href="product_detail?bseq=${cartVO.bseq}">
              										<span> ${cartVO.title} </span>              
            										</a>    
                                                </div>
                                            </td>
                                            <td>${cartVO.price} </td>

                                            <td><button class="btn-cart" onclick="go_cart()">Add to Cart</button></td>
                                            <td><input type="checkbox" name="cseq" value= "${cartVO.cseq}"></td>
                                        </tr>
                                        </c:forEach>
                                   <tr>        
          <th colspan="2"> 총 액 </th>
          <th colspan="2"> 
            <fmt:formatNumber value="${totalPrice}" type="currency"/><br>
          </th> 
          <th><a href="#" onclick="go_wishlist_delete()"><h3>삭제하기</h3></a></th> 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wishlist End -->
        
     <%@ include file="../footer.jsp" %>
    
</body>
</html>