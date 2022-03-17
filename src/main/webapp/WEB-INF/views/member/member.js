/**
 * 	회원 정보 관련 자바스크립트 함수
 */
/*
 * 	약관 동의 여부 확인
 */
function go_next() {

	if($(".agree")[0].checked == true) {	// 동의함 체크되어 있어 회원가입 화면 요청
		$("#join").attr('action', 'join_form').submit();
	} else if ($(".agree")[1].checked == true){
		alert("약관에 동의해 주셔야 합니다.");
	}
	
}

/*
 * 	id 중복확인 화면 출력
 */
function idcheck() {
	if($("#id").val() == "") {
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return false;
	}
	
	// 아이디가 입력되었으면 id중복확인 윈도우 오픈
	var url = "id_check_form?id=" +  $("#id").val();
	window.open(url, "_blank_", "toolbar=no, menubar=no, scrollbars=no, resizable=yes, width=350, height=200");
}

/*
 * 중복확인 ID 사용
 */
function idok() {
	$("#theform").attr("action", "id_check_confirmed").submit();
}

/*
 *  회원가입시, 필수입력 항목 확인
 */
function go_save() {
	if($("#id").val() =="") {
		alert("아이디를 입력해주세요!");
		$("#id").focus();
		return false;
	} else if($("#id").val() != $("#reid").val()) {
		alert("아이디 중복체크를 해주세요!");
		$("#id").focus();
		return false;
	} else if($("#pwd").val() == "") {
		alert("비밀번호를 입력해주세요!");
		$("#pwd").focus();
		return false;
	} else if($("#pwd").val() != $("#pwdCheck").val()) {
		alert("비밀번호가 일치하지 않습니다!");
		$("#pwd").focus();
		return false;
	} else if ($("#name").val() == "") {
		alert("이름을 입력해주세요!");
		return false;
	} else {
		// 회원가입 요청
		$("#join").attr("action", "join").submit();
	}
}	

/*
 *  우편번호/주소 찾기 윈도우 오픈
*/
function post_zip() {
	var url = "find_zip_num";
		
	window.open(url, "_blank_", "toolbar=no, menubar=no, scrollbars=no, resizable=yes, " +
						"width=500, height=350");
}
















