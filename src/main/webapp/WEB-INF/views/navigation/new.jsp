<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
        
<!-- Product List Start -->
<div class="product-view">
	<div class="container-fluid">
		<div class="row"> 
                              
		<!-- Side Bar Start -->
			<div class="col-lg-4 sidebar">
				<div class="sidebar-widget brands">
					<h2 class="title">이달의 신작</h2>
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

			<!-- ProductList Start -->
			<div class="col-lg-8">
				<div class="row">
					

					<!-- TopBar Start -->
					<div class="col-md-12">
						<div class="product-view-top">
							<div class="row">

								<div class="col-md-4">
									<div class="product-search">
										<input type="email" value="Search">
										<button>
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>

								<div class="col-md-4">
									<div class="product-short">
										<div class="dropdown">
											<div class="dropdown-toggle" data-toggle="dropdown">도서분류</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item">일별베스트</a> 
												<a href="#" class="dropdown-item">주별 베스트</a> 
												<a href="#" class="dropdown-item">월별 베스트</a>
											</div>
										</div>
									</div>
								</div>

								<!-- bookCartButton :: start -->
								<div class="col-md-4">
									<div class="product-short">
										<div class="bookCartButton">
											<input type="button" value="위시리스트에 담기" class="submit" onclick="go_wishlist()">
										</div>
									</div>
								</div>
								<!-- bookCartButton :: end -->

							</div>
						</div>
					</div>
					<!-- TopBar End -->

					<!-- Book List Start -->
					
					<div id="prodcuct-wrap">
					 <c:forEach items="${NewProductList}"  var="productVO">
						<div class="product-item">
							<div class="product-title">
								<span class="checkBox"> 
									<input type="checkbox" name="_KEY" value="348921505">
								</span> 
								<label> 
									<a href="product-detail?bseq=${productVO.bseq}" target="_blank"></a>
								</label>
							</div>
							
							<!-- 이미지 안에 장바구니, 위시리스트, 상세보기 버튼 시작 -->
							<div class="product-image">
								<a href="product-detail?bseq=${productVO.bseq}"> 
									<img src="ebook-image/${productVO.image}" />
								</a>
								<div class="product-action">
									<a href="#"><i class="fa fa-cart-plus"></i></a> 
									<a href="#"><i class="fa fa-heart"></i></a> 
									<a href="product-detail?bseq=${productVO.bseq}"><i class="fa fa-search"></i></a>
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
									<span class="price"> 
									<c:choose>
										<c:when test="${productVO.price eq 0}">
											<span>구매: 무료</span><br>
											<span>대여: 무료</span>
										</c:when>
										
										<c:otherwise>
											<span>구매: 
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${productVO.price}"/> 원
											</span>
											<br>
											<span>대여: 
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${productVO.price_rent}"/> 원 
											</span>
										</c:otherwise>
									</c:choose>
									</span>
								</div>
							</a>

							<div class='reviewStat'>
								<span class='title'>평점 </span> 
								<span class='starRateWrap'>
									<div class="ratting ${productVO.ratingAvg}"></div>
								</span> 
							</div>
						</div>
						</c:forEach>
					</div>
					<!-- BookList ENd -->
					
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>


