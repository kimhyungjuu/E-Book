<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
<h1>상품리스트</h1>	
<form name="frm" id="prod_form" method="post">
<!-- Product List Start -->
        <div class="product-view">
            <div class="container-fluid">
                <div class="row">               
                    <!-- Side Bar Start -->
                    <div class="col-lg-4 sidebar">
                        <div class="sidebar-widget brands">
                            <h2 class="title">카테고리</h2>
                            <ul>
                                <li><a href="#">소설</a><span>(45)</span></li>
                                <li><a href="#">경영/경제 </a><span>(34)</span></li>
                                <li><a href="#">인문/사회/역사 </a><span>(67)</span></li>
                                <li><a href="#">자기계발</a><span>(74)</span></li>
                                <li><a href="#">에세이 </a><span>(89)</span></li>
                                <li><a href="#">여행</a><span>(28)</span></li>
                                <li><a href="#">외국어</a><span>(28)</span></li>
                            </ul>
                        </div>
                        
                        <div class="sidebar-widget tag">
                            <h2 class="title">Tags Cloud</h2>
                            <a href="#">Lorem ipsum</a>
                            <a href="#">Vivamus</a>
                            <a href="#">Phasellus</a>
                            <a href="#">pulvinar</a>
                            <a href="#">Curabitur</a>
                            <a href="#">Fusce</a>
                            <a href="#">Sem quis</a>
                            <a href="#">Mollis metus</a>
                            <a href="#">Sit amet</a>
                            <a href="#">Vel posuere</a>
                            <a href="#">orci luctus</a>
                            <a href="#">Nam lorem</a>
                        </div>
                    </div>

                    <!-- Side Bar End -->
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="product-view-top">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="product-search">
                                                <input type="email" value="Search">
                                                <button><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="product-short">
                                                <div class="dropdown">
                                                    <div class="dropdown-toggle" data-toggle="dropdown">도서 분류</div>
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
												<!-- <div class="bookCartButton">
								                            <a href="javascript:fn_addCartList_relProduct($('form#sideform').get(0),'_KEY')" class="buttonStyle">북카트 담기</a> button 으로 바꿀까
								                        </div> -->
												
												<div class="bookCartButton">
													<input type="button" value="북카트에 담기" class="submit"
														onclick="go_cart()">
												</div>
											</div>
										</div>
										<!-- bookCartButton :: end -->
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="product-item">
                                <c:forEach items="${productKindList}"  var="productVO">
                                    <div class="product-title" >
	                                    <span class="checkBox"> 
											<input type="checkbox" name="_KEY" value="348921505">
										</span>
                                       	<label> 
										<a href="product-detail?bseq=${productVO.bseq}" target="_blank"> 
				 							<i class="decoFront"></i>
										</a>
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
											<span class="author">${productVO.author} </span>
										</div>
								
										<div class="priceWrap">
											<span class="price"> 
												<c:choose>
											    <c:when test="${price eq 0}">
											        무료
											    </c:when>
											    <c:otherwise>
											        <span>구매: ${product.price} </span><span>원</span>
											        <span>대여: ${product.price_rent} </span><span>원</span>
											    </c:otherwise>
												</c:choose>
											</span>
								
										</div> 
									</a>
					
									<div class='reviewStat'>
										<span class='title'>평점</span> 
										<span class='starRateWrap'> <span class='starRate' style='width: 98%'>9.8</span></span> 
										<em class='rateNumber'>9.8</em>
									</div>
						
									<div class="saleIndex">
										<span class="title">판매지수</span> <em class="indexNumber">209,564</em>
									</div>
									</c:forEach>
                                </div>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
</form> 
</article>
<%@ include file="../footer.jsp" %>
