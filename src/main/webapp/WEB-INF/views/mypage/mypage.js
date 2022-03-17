/**
 * 	상품을 장바구니에 담기 위한 요청 전달
 */
function go_cart() {
	/*
	 * quantity 입력 필드에 값이 있는지 확인
	 * 값이 없으면 alert 출력
	 * 값이 있으면 : url => "cart_insert" submit
	 */

		$("#theform").attr("action", "cart_insert").submit();
	}

function go_wishlist() {
	
	$("#theform").attr("action", "wishlist_insert").submit();
}

function go_wishlist_delete() {
	var count = 0;
	// 삭제할 항목이 하나인 경우 확인
	if(document.wishlist-page.cseq.length == undefined) {
		if (document.formm.cseq.checked == true) {
			count++;
		}
	}
	// 삭제할 항목이 2개 이상인 경우 확인
	for(var i = 0; i<document.formm.cseq.length; i ++) {
		if (document.wishlist-page.cseq[i].checked == true) {
			count++;
		}
	}
}

/*
 *  장바구니 항목 삭제
*/
function go_cart_delete() {
	var count = 0;
	// 삭제할 항목이 하나인 경우 확인
	if(document.cart-page.cseq.length == undefined) {
		if (document.formm.cseq.checked == true) {
			count++;
		}
	}
	// 삭제할 항목이 2개 이상인 경우 확인
	for(var i = 0; i<document.formm.cseq.length; i ++) {
		if (document.cart-page.cseq[i].checked == true) {
			count++;
		}
	}
	
	if( count == 0) {
		alert("삭제할 항목을 선택해 주세요!");
	} else {
		// $("#theform").attr("action", "cart_delete").submit();   와 동일
		document.formm.action = "cart_delete";
		document.formm.submit();
	}
}  

/*
 *  장바구니에 저장된 상품 내역을 주문처리 요청
 */
function go_order_insert() {
	
	$("#theform").attr("action", "order_insert").submit();
}
/*
 * 
 */

