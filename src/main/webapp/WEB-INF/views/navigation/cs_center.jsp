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
		<input type="hidden" name="nseq">  
			<table id="noticeList">				
				<div class="col-md-9">
					<div class="tab-content">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                      <c:forEach items="${noticeList}" var="noticeVO">       
							<div class="tab-pane fade show active" id="notice_board" role="tabpanel" aria-labelledby="dashboard-nav">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse${noticeVO.nseq}" aria-expanded="false">
									<h4><i class="fa fa-chevron-up"></i>
									&nbsp;  ${noticeVO.subject} </h4>
								</a>
									<div id="collapse${noticeVO.nseq}" class="panel-collapse collapse" role="tabpanel">
		                                <div class="article-body">
											<p>${noticeVO.content }</p>
										</div> 
									</div>
								</div>
								
							</c:forEach>
							</div>
						</div>
					</div>
				</table>
				</div>
			</div>
		</div>

<%@ include file="../footer.jsp"%>
</body>
</html>