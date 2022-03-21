/**
 * 
 */

/*
 * 책 등록화면 출력
 */
function go_wrt() {
	$("#prod_form").attr("action", "admin_product_write_form").submit();
}

/*
** 책 등록 시에 입력값 확인
*/
function go_save() {
	var $price1 = $("#price_rent");
	var $price2 = $("#price");
	
	if ($("#title").val()=="") {
		alert("책 제목을 입력하세요!");
		$("#title").focus();
	} else if ($("#author").val()=="") {
		alert("작가를 입력하세요!");
		$("#author").focus();
	}else if ($price1.val()=="") {
		alert("대여료를 입력하세요!");
		$price1.focus();
	} else if ($price2.val()=="") {
		alert("판매가를 입력하세요!");
		$price2.focus();
	} else if ($("#content").val()=="") {
		alert("책 설명을 입력하세요!");
		$("#content").focus();
	} else if ($("#product_image").val()=="") {
		alert("첵 이미지를 입력하세요!");
		$("#product_image").focus();
	} else {
		// 주의: 이미지 파일을 전송하므로 enctype이 설정되어야 함.
		$("#write_form").attr("encoding", "multipart/form-data");
		$("#write_form").attr("action", "admin_product_write").submit();
	}
	
}

/*
 * 책 목록으로 이동함.
 */
function go_mov() {
	$("#update_form").attr("action", "admin_product_list").submit();
}








