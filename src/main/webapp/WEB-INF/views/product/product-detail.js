/**
 *  도서 상세페이지 구현
 */
 
// 리뷰 작성
function post_review() {
		
	if($("#rating").val()=="") {
		alert("별점을 선택해주세요!");
	}
	if($("#review").val()=="") {
		alert("리뷰를 입력해주세요!");
		$("#review").focus();
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

