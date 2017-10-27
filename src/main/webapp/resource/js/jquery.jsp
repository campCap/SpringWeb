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
	
	   //--속성변경예제 --
	  $(function() {
		      var chImgButton = $("#ch-img-button");
		      var container = $("#img-container");   
		      var img = $("#img-container img");
		      var imgSrc = $("#img-src");

		      chImgButton.click(function() {
		         img.attr("src", imgSrc.val());
		      });
		   });
	  
	//--자식노드변경예제 -->
	  $(function() {
	     var chNodeButton = $("#ch-node-button");
	     var container = $("#ch-node-container");
	     
	     chNodeButton.click(function() {
	    	 //1.텍스트 노드 추가
	       //container.text("<h1>te12sttestset</h1>");
	        //2. 엘리먼트 노드 추가
	        container.html("<h1>te12sttestset</h1>");
	     });
	  });
	  
	  $(function() {
		   var addTextNodeButton = $("#add-text-node-button");
		   var addImgNodeButton = $("#add-img-node-button");
		   var removeNodeButton = $("#remove-node-button");
		   var container = $("#node-container");   
		   
		   var remove = function(e){
		      //container.removeChild(e.target);
		      container.removeProp(this);
		   }
		   var idx = 0;
		   addTextNodeButton.click(function() {
		      //1.TextNode 생성
		      var span = $('<span/>');
		      var txt = '안녕하세여'+ idx++;
		      //2. container(부모) 얻기
		      //3. 부모에 자식을 추가
		      span.append(txt);
		      container.append(span);
		      
		      span.onclick(remove);
		      
		   });
		   
		   addImgNodeButton.click(function() {
		       //How to 1(성능에 좋음)
		      //1 Element 생성
		      //var img = $('<img/>');
		      //img.attr("src", "http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile25.uf.tistory.com/image/2239B038579139CF067E3D");
		      //2. container(부모) 얻기
		      //3. 부모에 자식을 추가
		      //container.append(img);
		      //img.click(remove);
		      $('<img src ="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile25.uf.tistory.com/image/2239B038579139CF067E3D"/>').appendTo(container).click(remove);
		      
		      
		      //How to 2 (성능에 좋지 않지만 편리함.-> 한두개 넣는 상황의 성능에 영향을 주지 않을 거라면 이를 사용)
		      container.innerHTML += '<img onClick="remove()" src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile1.uf.tistory.com/image/2134514F579B4C7D165741" />';
		      
		      
		   });
		   
		   removeNodeButton.click(function() {
		      // 1. 내정된 노드를 지우기
		      if(container.hasChildNodes()){
		         container.removeChild(container.lastChild);
		      }
		      // 2. 선택된 노드를 지우기
		      
		   });
		});
</script>
</head>
<body>
	<!-- ----------------------텍스트 노드 추가 예제  ---------------------------------->
   <input id="add-text-node-button" type="button" value="텍스트노드 추가" />
   <input id="add-img-node-button" type="button" value="이미지노드 추가" />
   <input id="remove-node-button" type="button" value="노드 삭제" />
   <div id="node-container"></div>
   <hr />
	
	<!-- ----------------------자식노드변경예제 ---------------------------------->
   <input id="ch-node-button" type="button" value="자식노드 변경" />
   <div id="ch-node-container">hello</div>
   
   <hr />

	<!-- ----------------------속성변경 예제 ---------------------------------->
	<input type="text" id="img-src">
	<input id="ch-img-button" type="button" value="이미지 변경">
	<div id="img-container">

		<img alt=""	src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5IgH9WrVDZoIk_IARJxWk2GO2Cg9nDRrs2mol2fGtVdTMh6X">

	</div>

	<hr />
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