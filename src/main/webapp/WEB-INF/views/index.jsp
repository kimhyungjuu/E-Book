<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>     
               
<style>
.clear{clear:both;}
#item{
    width:21%;
    float:left; 
    margin: 10px 20px;
    text-align: center;
}

#item img{
	width: 190px; 
	height : 290px; 
	margin-bottom : 10px;
}

#front{
	margin-left: 50px;
	margin-bottom: 100px;
}
</style>  

	<div class="clear"></div>
		<div id="front">   
	    <h2> 베스트 도서 </h2>     
	    <div id="newProduct">         
	      <c:forEach items="${BestProductList}"  var="productVO">
	        <div id="item">
	          <a href="product-detail?bseq=${productVO.bseq}">
	            <img src="ebook-image/${productVO.image}" />
	            <h6> ${productVO.title} </h6>    
	          </a>    
	        </div>
	      </c:forEach>      
	    </div>
	   <div class="clear"></div>
   </div>

	<div class="clear"></div>
		<div id="front">   
	    <h2> 신작 도서 </h2>     
	    <div id="newProduct">         
	      <c:forEach items="${NewProductList}"  var="productVO">
	        <div id="item">
	          <a href="product-detail?bseq=${productVO.bseq}">
	            <img src="ebook-image/${productVO.image}" />
	            <h6> ${productVO.title} </h6>    
	          </a>    
	        </div>
	      </c:forEach>      
	    </div>
	   <div class="clear"></div>
   </div>
        
        
    <div id="front">   
	    <h2> 무료 도서</h2>     
	    <div id="newProduct">         
	      <c:forEach items="${FreeProductList}"  var="productVO">
	        <div id="item">
	          <a href="product-detail?bseq=${productVO.bseq}">
	            <img src="ebook-image/${productVO.image}" />
	            <h6> ${productVO.title} </h6>    
	          </a>    
	        </div>
	      </c:forEach>      
	    </div>
	   <div class="clear"></div>
   </div>         
        
<%@ include file="footer.jsp" %>  