<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
.col-lg-4.sidebar {
    padding: 50px;
    flex: 0 0 23%;
    max-width: 25%;
}

.sidebar-widget {
    padding: 40px;
    background: #ffffff;
}

.bookCartButton {
    padding-right: 100px;
    padding-bottom: 30px;
}

span.checkBox {
    float: left;
    /* padding: 10px; */
}

.product-view .product-item {
    margin-bottom: 30px;
}

.product-item .product-image {
    position: relative;
    overflow: hidden;
    width: 200px;
    height: 300px;
    margin: 0 auto;
    position: relative;
}

div#prodcuct-wrap {
    /* margin: 0 15px 0 15px; */
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: flex-start;
}

.product-item {
    position: relative;
    margin: 0px 10px;
    width: 200px;
}

.product-view .product-short, .product-view .product-price-range {
    position: relative;
    width: 100%;
    text-align: center;
    margin-left: auto;
}

</style>
        
<!-- Product List Start -->
<div class="product-view">
	<div class="container-fluid">
		<div class="row"> 
                              
		<!-- Side Bar Start -->
			<div class="col-lg-4 sidebar">
				<div class="sidebar-widget brands">
					<h2 class="title">무료 도서</h2>
					<ul>
						<li><a href="category?category=1">소설</a></li>
						<li><a href="category?category=2">경영/경제 </a></li>
						<li><a href="category?category=3">인문/사회/역사 </a></li>
						<li><a href="category?category=4">자기계발</a></li>
						<li><a href="category?category=5">웹소설 </a></li>
						<li><a href="category?category=6">웹만화</a></li>
					</ul>
				</div>

			</div>
			<!-- Side Bar End -->



					<!-- Book List Start -->
					<form action="product-detail" id="detailform" method="post">
						<input type="hidden" name="bseq" value="${productVO.bseq}">
						<div id="prodcuct-wrap">
							<c:forEach items="${FreeProductList}" var="productVO">
								<div class="product-item">
									<div class="product-title">
										<label> 
										<a href="product-detail?bseq=${productVO.bseq}" target="_blank"></a>
										</label>
									</div>

									<!-- 이미지 안에 장바구니, 위시리스트, 상세보기 버튼 시작 -->
									<div class="product-image">
										<a href="product-detail?bseq=${productVO.bseq}"> <img
											src="ebook-image/${productVO.image}" />
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-heart"
												onclick="go_wishlist(${productVO.bseq})"></i></a> <a href="#"><i
												class="fa fa-cart-plus" onclick="go_cart(${productVO.bseq})"></i></a>
											<a href="product-detail?bseq=${productVO.bseq}"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<!-- 이미지 안에 장바구니, 위시리스트, 상세보기 버튼 끝  -->

									<a href="product-detail?bseq=${productVO.bseq}" target="_blank">
										<div class="itemName">
											<strong>${productVO.title} </strong>
										</div>
										<div class="itemMeta">
											<span class="author">${productVO.author}</span>
										</div>

										<div class="priceWrap">
											<span class="price"> <c:choose>
													<c:when test="${productVO.price eq 0}">
														<span>구매: 무료</span>
														<br>
														<span>대여: 무료</span>
													</c:when>

													<c:otherwise>
														<span>구매: <fmt:formatNumber type="number"
																maxFractionDigits="3" value="${productVO.price}" /> 원
														</span>
														<br>
														<span>대여: <fmt:formatNumber type="number"
																maxFractionDigits="3" value="${productVO.price_rent}" />
															원
														</span>
													</c:otherwise>
												</c:choose>
											</span>
										</div>
									</a>

								</div>
							</c:forEach>
						</div>
						<!-- BookList ENd -->
					</form>

				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>


