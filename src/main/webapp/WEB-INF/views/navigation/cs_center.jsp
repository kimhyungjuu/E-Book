<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../header.jsp"%>
</head>
<body>
	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container-fluid">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="index">Home</a></li>
				<li class="breadcrumb-item active">cs_center</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- My Account Start -->
	<div class="my-account">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="nav flex-column nav-pills" role="tablist"
						aria-orientation="vertical">
						<a class="nav-link active" id="dashboard-nav" data-toggle="pill"
							href="#notice_board" role="tab" aria-selected="true">자주묻는 질문</a>
						<a class="nav-link" id="qna_nav" 
							href="qna_list" role="tab" aria-selected="true">1:1 문의하기</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                            
							<div class="tab-pane fade show active" id="notice_board" role="tabpanel" aria-labelledby="dashboard-nav">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1"
									aria-expanded="false">
									<h4><i class="fa fa-chevron-up"></i>&nbsp;[공지] 대통령 선거일 고객센터 휴무 안내</h4></a>
									<div id="collapse1" class="panel-collapse collapse" role="tabpanel">
		                                <div class="article-body"><p>안녕하세요.<br>고객센터입니다.</p>
											<p>3월 9일(수)는 대통령 선거 공휴일로 고객센터 업무가 일시 중단되오니 이용에 참고하여 주시기 바랍니다.</p>
											<p><strong>● 중단 업무<br></strong>- 고객센터 문의 안내 업무<br>- 페이퍼 구매 배송<br>- 페이퍼 A/S<strong><br>&nbsp;<br></strong>해당 일자에는 문의 답변 및 택배 출고가 진행되지 않으며, 서비스 관련 문의는 고객센터 [1:1 문의하기]를 통해 문의를 등록해주시면 3월 10일(목) 이후에 고객센터 운영 시간에 순차적으로 답변 드릴 수 있도록 하겠습니다.&nbsp;</p>
											<p>* <a class="text_link_button" href="https://help.ridibooks.com/hc/ko/requests/new">[1:1 문의하기] 바로가기</a></p>
											<p>자주 문의하시는 내용에 대한 안내는 고객센터 FAQ를 통해 확인하실 수 있으므로 이용에 참고해주시기 바랍니다.</p>
											<p>* <a class="text_link_button" href="https://help.ridibooks.com/hc/ko" target="_self">고객센터 FAQ 바로가기</a></p>
											<p><br>감사합니다.
										</div> 
									</div>
								</div>
								<div class="tab-pane fade show active" id="notice_board" role="tabpanel" aria-labelledby="dashboard-nav">
	                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2"
										aria-expanded="false">
										<h4><i class="fa fa-chevron-up"></i>&nbsp;[공지] <개인정보 처리방침> 변경 안내</h4></a>
									<div id="collapse2" class="panel-collapse collapse" role="tabpanel">
										<div class="article-body"><div> 아이디와 비밀번호를 분실한 경우 아래의 메뉴를 통해서 간편하고 빠르게 직접 찾기가 가능합니다.</div>
											<ul>
											<li><strong><a href="https://ridibooks.com/account/find-id" target="_self">아이디 찾기 바로가기(클릭)</a> </strong></li>
											<li><strong><a href="https://ridibooks.com/account/find-password" target="_self">비밀번호 찾기 바로가기(클릭)</a>&nbsp;</strong></li>
											</ul>
											<div></div>
											<div>참고로 이용하시는 메일사 사정에 따라서 이메일 수신이 되지 않을 수 있으며, 이용하시는 메일함 정보를 확인하신 후 아래의 고객센터 FAQ를 확인해주시기 바랍니다.</div>
											<ul>
											<li><strong><a href="https://help.ridibooks.com/hc/ko/articles/115011864847" target="_self">이메일 미수신 FAQ (클릭)</a>&nbsp;</strong></li>
											</ul>
											<div></div>
											<div>
											<div>
											<span>아이디 찾기/비밀번호 찾기 메뉴에서도 확인이 어려운 경우 </span><a class="PrimaryLink BaseLink" href="mailto:help@ridi.com" target="_blank" rel="noreferrer noopener">help@ridi.com</a><span> 을 통해서 아래의 내용을 기재하여 문의해주세요. </span><br><br><strong> 1. 이메일주소 : </strong><br><span>※ 회원가입한 이메일 주소와 수신할 이메일 주소를 각각 기재해주세요</span><br><span>※ 타인 명의 이메일 및 타인의 계정을 도용할 경우 관련 법령에 의거하여 처벌받을 수 있습니다.</span>
											</div>
											<div>
											<span> </span><br><strong>2. 아이디 : </strong><br><span>※ 임시비밀번호 발급을 희망하는 아이디를 반드시 기재해주시고, 아이디를 모를 경우 1의 이메일주소를 기재해주세요</span>
											</div>
											<div>
											<br><strong>3. 성함 : </strong><br><strong>4. 출생년도 : </strong><br><strong>5. 이용&amp;보유 도서명 :</strong>
											</div>
											<div>
											<strong>6. 개인정보 수집동의 : 작성해주신 개인정보는 소비자의 불만 또는 분쟁처리에 관한 기록 보유 방침에 따라 보관되며, 본 동의를 거부할 수 있으나 미동의시에는 문의접수가 불가하며 동의여부를 반드시 기재해주시기 바랍니다. ex ) 동의합니다.</strong><br><br><span>아이디 찾기 및 비밀번호 찾기는 아이디 명의자가 직접 문의해주셔야 처리가 가능하며, 본인이 아닌 경우 확인이 어려운 점 참고 부탁드립니다.</span>
											</div>
											</div>
											</div>
									</div>
								</div> 
								<div class="tab-pane fade show active" id="notice_board" role="tabpanel" aria-labelledby="dashboard-nav">
	                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse3"
										aria-expanded="false">
										<h4><i class="fa fa-chevron-up"></i>&nbsp; 	전자책 다운로드 전, 취소,반품 가능여부 문의</h4></a>
									<div id="collapse3" class="panel-collapse collapse" role="tabpanel">
										<span class="width2"><span class="faq_answer">전자책 주문(단, 결제완료 기준) 후 20일 이내 &amp; 
										다운로드 이전이면, 주문조회 후 직접 취소하실 수 있습니다. 단, 디지털 파일 특성상 다운로드 이후에는 취소/반품이 불가합니다. 
										다른 상품으로의 교환(단, 취소 가능 기한 이내&amp; 다운로드 전)은 불가하므로, 기한 내 취소 후 새로 주문해주십시오.<br><br>
										* 취소 방법 : 주문조회 후 주문상품 정보 항목의 '변경,취소' 버튼 누른 후 가능합니다.<br>단, 취소 가능 기한이 지났거나, 
										1회라도 다운로드(세트 전자책 중 일부 다운로드 포함) 받으신 경우에는 '변경,취소' 버튼이 표시되지 않고 취소 불가합니다. <br><br>
										다운로드 중 또는 다운로드 후 읽으시는 중에, 오류가 있는 경우에는<br>고객센터 1대1상담&gt;전자책 코너로 신고해주십시오.</span>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<%@ include file="../footer.jsp"%>
</body>
</html>