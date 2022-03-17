<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
 
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">홈</a></li>
                    <li class="breadcrumb-item active">장바구니</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <c:choose>
        <c:when test= "${cart.size() == 0}">
      		<h3 style="color: red;text-align: center;"> 장바구니가 비었습니다. </h3> 
    	</c:when>
    	<c:otherwise>
    	</c:otherwise>
    	</c:choose>
        
        <!-- Cart Start -->
        <div class="cart-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="cart-page-inner">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>상품명</th>
                                            <th>가격</th>
                                            <th>주문일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    
                                    <c:forEach items="${cartList}"  var="cartVO">
                                        <tr>
                                            <td>
                                                <div class="img">
                                                    
                                                    <a href="product_detail?bseq=${cartVO.bseq}">
              										<span> ${cartVO.bname} </span>              
            										</a>    
                                                </div>
                                            </td>
                                            
                                            
                                            
                                            <td>${cartVO.price} </td>
                                            <td> <fmt:formatDate value="${cartVO.indate}" type="date"/></td>
                                            <td><input type="checkbox" name="cseq" value= "${cartVO.cseq}"></td>
                                        </tr>
                                        
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-4">
                        <div class="cart-page-inner">
                            <div class="row">
                    
                                <div class="col-md-12">
                                    <div class="cart-summary">
                                        <div class="cart-content">
                                            <h1>총액</h1>
                                        <span> 
            							<fmt:formatNumber value="${totalPrice}" type="currency"/>
          								</span> 
          								 <span><a href="#" onclick="go_cart_delete()"><h3>삭제하기</h3></a></span>
          								  
                                        </div>

                                        <div class="cart-btn">
                                            <input type="button" value="쇼핑 계속하기" class="cancel" onclick="location.href='index'">    
      								<c:if test= "${cartList.size() != 0}">
      								<input type="button" value="주문하기"  class="submit" onclick="go_order_insert()">
      								</c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->
        
  
<%@ include file="../footer.jsp" %>

</body>
</html>