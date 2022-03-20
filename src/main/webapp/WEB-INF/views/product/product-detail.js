/**
 *  도서 상세페이지 구현
 */
 
// 리뷰 작성
function post_review() {
		
	if($("#content").val()=="") {
		alert("리뷰를 입력해주세요!");
		$("#content").focus();
	} else if ($('input:radio[name=rating]').is(':checked')==false) {
		alert("별점을 선택해주세요!");
	} else {
		$("#myform").attr("action", "post_review_save").submit();
	}
		
}

 // 리뷰 삭제
function go_review_delete() {
	if(confirm("삭제하시겠습니까?")==true) {
		delete(rseq);
	} else {
		return false;
	}
	var count = 0;
	//삭제할 항목이 하나인 경우 확인
	if (document.formm.rseq.length == undefined) {
		if (document.formm.rseq.checked == true) {
			count++;
		}
	}
	// 삭제할 항목이 2개 이상인 경우 확인
	for (var i=0; i<document.formm.rseq.length; i++) {
		if (document.formm.rseq[i].checked == true) {
			count++;
		}
	}
	
	if (count == 0) {
		alert("삭제할 항목을 선택해 주세요!");
	} else {
		// $("#theform").attr("action", "cart_delete").submit(); 와 동일
		document.formm.action = "review_delete";
		document.formm.submit();
	}
}

// 도서 구매하기
// 보유 금액 확인하고 보유금액이 없으면 결제창
// 보유금액이 있으면 구매금액 차감하는 결제창
// 구매 후 내서재에 정보이동
function buy_book() {
	if(confirm("구매하시겠습니까?") == false){
			return false;
		} else {
			$("#theform").attr("action", "buy_account_form").submit();
		}
}

function rent_book() {
	if(confirm("대여하시겠습니까?") == false){
			return false;
		} else {
			$("#theform").attr("action", "rent_account_form").submit();
		}
}
