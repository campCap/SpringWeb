<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		var chButton = $("#ch-button");
		
		//이벤트 바인딩 두 가지 옵션 : 첫번째 범용 이벤트 바인딩 함수 on();
		/* chButton.on("click", function(){
			alert("tt");
		}); */
		
		chButton.click(function(){
			$("#p").css({
				"background" : "red",
				"font-size" : "29px"
				});
			
		});
	});
</script>
</head>
<body>

	<!-- ----------------------노드 순회 예제 ---------------------------------->
	<input id="ch-button" type="button" value="배경색 변경">
	<div>
		<div>1</div>
		<div id="p">
			<div>2</div>
		</div>
		<div>3</div>
	</div>

	<hr />
</body>
</html>

<!-- type of = 데이터형식을 출력해줌.
제이슨사용시 표기법준수. 숫자에는 ""안넣음. -->