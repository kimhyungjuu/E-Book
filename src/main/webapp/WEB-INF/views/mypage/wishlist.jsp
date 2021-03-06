<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
 <%@ include file="../header.jsp" %>
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
        

        <!-- Wishlist Start -->
        <div class="wishlist-page">
            <div class="container-fluid">
                <div class="wishlist-page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                            <form action="product-detail" id="detailform" method="post">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Add to Cart</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
  
                                    <c:forEach items="${wishlist}"  var="wishlistVO">
                                    
                                    <input type="hidden" name="bseq" value="${wishlistVO.bseq}">
                                        <tr>
                                            <td>
                                                <div class="img">
                                                    <a href="product-detail?bseq=${wishlistVO.bseq}">
              										<span> ${wishlistVO.title} </span>              
            										</a>    
                                                </div>
                                            </td>
                                            <td>${wishlistVO.price} </td>
								
                                           <td><button class="btn-cart" onclick="go_cart(${wishlistVO.bseq})">Add to Cart</button></td>
                                            <td><input type="checkbox" id ="wseq" name="wseq" value= "${wishlistVO.wseq}"></td>
                                        </tr>
                                        </c:forEach>

                                   <tr>        
          <th colspan="2"> 총 액 </th>
          <th colspan="2"> 
            <fmt:formatNumber value="${totalPrice}" type="currency"/><br>
          </th> 
          <th><a href="#" onclick="go_wishlist_delete2()"><h3>삭제하기</h3></a></th> 
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wishlist End -->
        
     <%@ include file="../footer.jsp" %>
    <script type="text/javascript">
    
        function go_wishlist_delete2() {
        	var count = 0;
        	// 삭제할 항목이 하나인 경우 확인
        	var wseq =$("#wseq").val();
        	
	      	if(wseq != undefined) {
	      		
        		if ($("input:checkbox[name=wseq]").is(":checked") == true) {
        			
        			count++;
        		}
        	} 
        	// 삭제할 항목이 2개 이상인 경우 확인
        	
    /*     	for(var i = 0; i<document.detailform.wseq.length; i ++) {
        		if (document.detailform.wseq[i].checked == true) {
        			count++;
        		}
        	} */
        	if( count == 0) {
        		alert("삭제할 항목을 선택해 주세요!");
        	} else {
        		// $("#theform").attr("action", "cart_delete").submit();   와 동일
        		$("#detailform").attr("action","wishlist_delete");
        		$("#detailform").submit();
        		
        		
        	}
        }
		
	




</script>
</body>
</html>