<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>	 

 <style>
h1 {
	text-align: center;
}
header {
	height: 100px;
}

body {
	background-color: white;
	margin: 0;
	padding: 0;
	font-size: 1.0em;
	line-height: 1.2em;
	color: #333;
}

a {
	text-decoration: none;
	color: #333;
}
th {
	background-color: #E4E4E4;
}
article {
	min-height: 600px;
}

table#qnaList {
	border-collapse: collapse; /* border �궗�씠�쓽 媛꾧꺽 �뾾�빊 */
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; /* �쟾泥� �뀒�씠釉� 湲몄씠 �꽕�젙 */
	margin-left: 140px;
	margin-bottom: 20px;
	
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#qnaList td{ /* �뀒�씠釉붿쓽 th �� td 留덉쭊怨� �뙣�뵫 吏��젙 */
	padding-right: 40px;
}
h2, h3 {
	text-align:center;
}

div#buttons {
	float: right;
    padding-right: 550px;
    padding-top: 50px;
}
}
form {
    padding-top: 30px;
}
fieldset {
    min-width: 0;
    padding-left: 430px;
    margin: 0;
    border: 0;
}
form label {
    width: 140px;
    margin: 5px 0;
}
</style> 

	<article>
	    <h2> 1:1 고객 게시판 </h2>
	    <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>    
		<form name="formm" method="post" action="qna_write">
			<fieldset>	
				<legend>1:1 문의 게시글</legend>	
				<br>	
			    <label>Title</label>
			    <input type="text" name="subject"  size="63" >
			    <br><br>
				<label style="float: left;">Content</label>
			    <textarea rows="8" cols="65" name="content"></textarea><br>
			</fieldset>   
		<div class="clear"></div>
		 <div id="buttons" style="float:right">
			<input type="submit"  value="글쓰기"     class="btn"> &nbsp;
			<input type="reset"   value="취소"     class="btn" onclick="javascript:history.back();">&nbsp;
			<input type="button"  value="쇼핑 계속하기"  class="btn"  onclick="location.href='index'">	
		  </div>
		</form>
	</article>
<%@ include file="../footer.jsp" %>