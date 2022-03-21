<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp"%>
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
.btn {
	width: 100px;
	border-radius: 5px;
	background-color: #FF6F61;
	color: #333;
	box-shadow: 3px 3px 3px #999999;
	text-decoration: none;
	text-align: center;
	padding: 5px;
	margin: 0 7px 7px 0px;
}
table#List {
	border-collapse: collapse; 
	border-top: 2px solid #333;
	border-bottom: 1px solid #333;
	width: 80%; 
	margin-left: 80px;
	margin-bottom: 20px;
	
}
th, td{ 
	padding: 8px 5px;
	text-align: center;
	
}

#List td{ 
	padding-right: 40px;
}
</style>
	<script type="text/javascript">
	$(document).ready(function() {
		<%-- AJAX 통신 설정 --%>
		$.ajax({
			type: 'GET',
			headers: {
				Accept: "application/json; charset=utf-8",
				"Content-type": "application/json; charset=utf-8"
			},
			url: 'sales_record_chart',
			success: function(result) {  // result : controller에서 전달된 데이터
				// 최신 버전의 구글 코어차트 패키지를 메모리로 로드
				google.charts.load('current', {'packages':['corechart']});
				
				// 차트 API가 로드가 완료되었을 때 아래의 콜백함수실행(이벤트로 처리)
				// 차트 그리는 함수 호출
				google.charts.setOnLoadCallback(function() {
					drawChart(result);
				})
			},
			error: function() {
				alert("Chart drawing error!");
			}
		})
	});
	
	function drawChart(result) {
		// 차트를 그리는데 사용할 데이터 객체 생성
		var data = new google.visualization.DataTable();
		
		data.addColumn("string", "title");
		data.addColumn("number", "quantity");
		
		// 콘트롤러에서 전달된 json 타입의 데이터를
		// 자바스크립트 배열로 변경
		var dataArray = [];
		$.each(result, function(i, obj) {	// json배열 타입의 데이터를 항목별로 반복
			dataArray.push([obj.title, obj.quantity]);
		})
		
		// data객체에 dataArray의 내용을 저장
		data.addRows(dataArray);
		
		// 파이차트 그리기
		// 차트 그리기 옵션 지정
		var piechart_options = {
			title: '제품별 판매 실적',
			width: 300,
			height: 300
		};
		
		// 차트 종류와 옵션을 설정
		var piechart = 
			new google.visualization.PieChart(document.getElementById('piechart_div'));
		
		piechart.draw(data, piechart_options);
		
		//바차트 그리기
		var barchart_options = {
			title: '제품별 판매 실적',
			width: 300,
			height: 300
		}
		
		var barchart = 
			new google.visualization.BarChart(document.getElementById('barchart_div'));
		
		barchart.draw(data, barchart_options);
	}
	</script>

	<div align="center">
	<h1>도서별 판매 실적</h1>
	<table id="List">
		<tr>
			<td><div id="piechart_div" style="boarder:1px solid #cc"></div></td>
			<td><div id="barchart_div" style="boarder:1px solid #cc"></div></td>
		</tr>
	</table>
	</div>

</body>
</html>