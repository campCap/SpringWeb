<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

   /* var data = [2,4,6,8,0];
   var entity = {id:1, title:"he;llo", writerId:"y"}
   
   /* for(var i =0; i<data.length; i++)
      alert(data[i]);
    *//* 
   for(var i in data)
      alert(data[i]); 
    
    for(vaer k in entity)
       alert(entity[k]);
       */
      
/* var json =[
   {id:"1",title:"title"},
   {id:"2",title:"good"}
];
alert(json[1].title]);
alert(json[1]["title"]);
 */
 /* var data = eval('({id:"1",title:"title"})'); */
/*  var data = JSON.parse('{"id":1,"title":"title"}'); 
alert(typeof data.title); */

/* var x = 3;
var y = new Number(3);

alert(x === y); //false
alert(3.5-"2"); //true */
/* 
var add = new Function("x,y", "return x+y");
alert(add(3,8));
 */
/* var add = function(){
/*    return x+y;
};
alert(add(3,8,19));
 
 var sum = 0;
 
 for(var i=0; i<arguments.length; i++)
    sum += arguments[i];
 
 return sum;
 
 };
 
alert(add(1,2,3,4,5));
 */
 /* function f1(){
    var a=1;
 
       return function f2(){
          return a;
       }
       }
 var f = f1();
 var a = f();
 alert(a);
  */
/* 
   
   function calcApp() {
      var xText = document.getElementById("x");
      var yText = document.getElementById("y");
      var addButton = document.getElementById("add-button");
      var resultText = document.getElementById("result");
      
      addButton.onclick = addButtonClick;

      function addButtonClick() {
         var x, y;
      /* x = prompt("x 값을 입력하세요", 0);
         y = prompt("y 값을 입력하세요", 0);  */
   /*       x = parseInt(xText.value);
         y = parseInt(yText.value);
          
         resultText.value = x + y;
      }

   }

   window.onload = calcApp;
   
   window.onload = function(){
      var countButton = document.getElementById("count-button");
      var countLabel = document.getElementById("count-label");
      var timerId = null
      ex.style.marginTop = "0px";
   
      countButton.onclick = function(){
         
         if(timerId == null)
         timerId = setInterval(function(){
            var count = parseInt(countLabel.textContent)
            var marginTop = parseInt(ex.style.marginTop);
            
            
            if(count <= 0){
               clearInterval(timerId);
            timerId = null;
            }
            
            if(marginTop >= 1000){
               clearInterval(timerId);
               timerId = null;
                  
            }
            
            //countLabel.textContent = count -1;
            ex.style.marginTop = (marginTop +1)+"px";
         }, 30);
      };
      
   }
   
    window.onload = function(){
      var openButton = document.getElementById("open-button");
      var moveButton = document.getElementById("move-button");
      var transButton = document.getElementById("trans-button");
      var iframe = window.frames[0];
      var win = null;
      
      openButton.onclick = function(){
      
         if(win == null)
            win = open("notice.html","_blank" , "width=500px, height=300px");
      };
      
      moveButton.onclick = function(){
         if(win != null)
            win.moveBy(-10, 0);
         
      }
      transButton.onclick = function(){
 iframe.location.href="http://www.daum.net"; 
    	  iframe.document.write("hello");
    	  
       };
   }; 
    */ 
   /* window.onload = function(){
      var navButton = document.getElementById("nav-button");
      var win = window.frames[0];
      
      navButton.onclick = function(){
         win.location.href = "http://www.newlecture.com";npc
      };
   }; */
   
/*    
   window.onload = function(){
	      var chButton = document.getElementById("ch-button");
	      
	      chButton.onclick = function(){
	    	  var p = document.getElementById("p");
	    	  /*  p.style.background="blue";  */
	    	  /*  p.firstElementChild.style.border ="1px solid blue";
	    	  
	    	 /* alert(p.fistChild.nextSibling); */
	  /*   	  for(var node = p.firstChild; node!=null; node = node.nextSibling)
	    		  alert(node.nodeType);
	      };
	   };  
	   */ 
   
   
	/*    window.onload = function(){
		   
		      
		      var chImgButton = document.querySelector("#ch-img-button");
		     //var p = document.querySelector("#module1 > div:nth-child(2) > div");
		      
		      var container = document.querySelector("#img-container");
		      var img = container.querySelector("img");
		      
		      
		      
		      chImgButton.onclick = function(){
		    	  var imgSrc = document.getElementById("img-src").value;
		    	  http://www.japan-tour.jp/sites/default/files/styles/16_9_width_640px_/public/yufuin_96_0.jpg?itok=bsYctHIh
		    	  img.src = imgSrc;
		    	
		      };
		   };  */ 
	   
/* 	   window.onload = function (){
		   
		   var chNodeButton = document.querySelector("#ch-node-button");
		   var container = document.querySelector("#ch-node-container");
		   
		   chNodeButton.onclick = function(){
			   // container.textContent = "<h1>hoho</h1>"; textContent 는 쓰는 그대로 나옴 <h1>hoho</h1>
			   container.innerHTML = "<h1>hoho</h1>";
		      };
	   }; */
	  
 /*   window.onload = function (){
		   
		   var addTextNodeButton = document.querySelector("#add-text-node-button");
		   var addImgNodeButton = document.querySelector("#add-img-node-button");
		   var removeNodeButton = document.querySelector("#remove-node-button");
			   //2. container(부모)얻기
		   var container = document.querySelector("#node-container");
		   
		   var remove = function(e){
			   /* 누가 선택되는지   alert(e.target); */
			   
			/*    container.removeChild(e.target);
		   }   */
			   
			   
			/*    
			   var idx=0;
		   addTextNodeButton.onclick = function(){
			   
			   var span = document.createElement("span");
			   span.onclick = remove;
			   
			   //1.textnode생성
			   var text = document.createTextNode("안녕하세요"+idx++);
	
			   //3. 부모에 자식을 추가
			   /* container.appendChild(text);	 */	
				/* span.appendChild(text);
			   container.appendChild(span);
			   
		      }; */ 

		   /*    addImgNodeButton.onclick = function(){
				/*    var img = document.createElement("img");
			 		img.src ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5IgH9WrVDZoIk_IARJxWk2GO2Cg9nDRrs2mol2fGtVdTMh6X";
			 		container.appendChild(img); */
			 		 
			 		//성능은 1번이 좋은데 ... 편한건 2번인데
			/*  		container.innerHTML += '<img onclick="remove()" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5IgH9WrVDZoIk_IARJxWk2GO2Cg9nDRrs2mol2fGtVdTMh6X">';
			      };
			      
			      removeNodeButton.onclick = function(){
					 //1. 내정된 노드 지우기  
					 container.removeChild(container.lastChild);
					   
					   //2. 선택된 노드 지우기
					   
				      };
		      }; */ 
		      
		   <!-- ---------------------노드 바꾸기 예제 ---------------------------------->	        
		      addEventListener("load", function (){
		    	    	  
		    	  var swapNodeButton = document.querySelector("#swap-node-button");
		    	  var container = document.querySelector("#node-swap-container");
		    	  
		    	  swapNodeButton.onclick = function (){
		    		  var nodes = container.getElementsByTagName("img");
		    		  var node1 = nodes[0];
		    		  var node2 = nodes[1];
		    		  var node3 = nodes[2];
		    		  var oldNode = container.replaceChild(node1, node3);
		    		  container.insertBefore(node3 ,node2);
		    		  
 		    	  };
		      });
		      
		      
		  <!-- ---------------------노드 바꾸기 예제222 ---------------------------------->	      
		      addEventListener("load", function (){
    	    	  
		    	  var moveUpButton = document.querySelector("#move-up-button");
		    	  var container = document.querySelector("#move-up-container");
		    	  var tbody = container.querySelector("tbody"); 
		    	  var checkedId = 0;
		    	  var td = tbody.firstElementChild.lastElementChild;
		    	  var tr = null;
		    	  
		    	  td.addEventListener("click", function(e){
		    		  //e.stopPropagation();
		    		  //alert("td"); /*말단부터 올라가기 떄문에*/
		    		  e.target.style.background = "green"; 
		    	  },true);
		    	  
		    	  tbody.onclick = function(e){
		    		  if(e.target.nodeName == "INPUT"){
		    			 tr = e.target.parentNode.parentNode;
		    		
		    		  };
		    			  //checkedId = ?.value;
		    		// alert(e.target.nodeName + ","+ e.currentTarget.nodeName);
		    	  };
		    	  
	    		  /* for(var i = 0; i < trs.length; i++) 이렇게 할필요 없음  부모 노드 선택하면 됨!!
	    			  trs[i].onclick = function(e){
	    			  e.target.style.background = "pink";
	    		  }; */
		    		  
	    		  moveUpButton.onclick = function(){
					if(tr == null)
						return;
					
    				 var container = tr.parentNode;
	    			 var bf = tr.previousElementSibling;
	    			 var af = tr.nextElementSibling;
	    			
	    			 if(bf == null){
	    				alert("더 이상 올릴 수가 없습니다."); 
	    			 }
	    			 
	    			 else {
	    			 	container.replaceChild(tr, bf);
	    			 	container.insertBefore(bf ,af);
	    			 };
	    		  };	
		      });
/* ---------------------------엘리먼트기본행위 막기--------------------------------------- */			
window.addEventListener("load", function() {
	var titleText = document.querySelector("form input[name]");
	var submitButton = document.querySelector("form input[type='submit']");
	var cancelButton = document.querySelector("form a");
	
	submitButton.onclick = function(e){
		if(titleText.value == ""){
			alert("제목을 입력하세요");
			e.preventDefault(); //실행이 안되게 해줌
		};
	};
	
	cancelButton.onclick = function(e){
		if(titleText.value != "")
			if(!confirm("작성중이던 입력을 취소하시겠습니까?")); //확인 취소 false 라면 (리턴값이 불린임)
				e.preventDefault(); // 실행을 취소시켜줌 여기서 유지시켜줌.
	};
});

/* ---------------------------노드복제 예제--------------------------------------- */			
addEventListener("load", function() {
	var cloneButton = document.querySelector("#ex-clone input[value='단순복제']");
	var tbody = document.querySelector("#ex-clone tbody");
	
	cloneButton.onclick = function(e){
		var tr = tbody.querySelector("tr");
		var clone = tr.cloneNode(true);
		
		tbody.appendChild(clone);
	};
	
});
/* ---------------------------Temlplate 태그를 이용한 노드복제 예제 --------------------------------------- */			
addEventListener("load", function() {
	var cloneButton = document.querySelector("#ex2-clone input[value='단순복제']");
	var ajaxButton = document.querySelector("#ex2-clone input[value='Ajax요청']");
	var tbody = document.querySelector("#ex2-clone tbody");
	var template = document.querySelector("#ex2-clone template");
	var btn = document.querySelector(".btn");
	
	var data = [
		{id:"1", title:"자바스크립트", writerId:"newlec"},
		{id:"2", title:"자바스크립트2", writerId:"newl2ec"},
		{id:"3", title:"자바스크립트3", writerId:"newl3ec"}
	];
	
	ajaxButton.onclick = function(e){
		/* 동기형으로 일하는 방식 */
		/* var xhr = new XMLHttpRequest();
		xhr.open("GET", "../../customer/notice-ajax", false); //요청하기 위한 설정
		xhr.send(); // 요청을 하는것
		data = eval(xhr.responseText); */
		
		/* 비동기형 */
		var xhr = new XMLHttpRequest();
		/* xhr.onreadystatechange = function(e){
			if(xhr.readyState == 4)	
				data = eval(xhr.responseText);
		}; */
		xhr.onload = function(){
			data = JSON.parse(xhr.responseText);
			btn.removeChild(btn.lastChild);
		};
		
		xhr.onerror = function(e){
			alert("오류가 발생하였씁니다.");
		};
		
		xhr.open("GET", "../../customer/notice-ajax", true); //요청하기 위한 설정
		xhr.send(); // 요청을 하는것
		
		
		//1. ajax icon 추가
		var img = document.createElement("img");
		img.src = "../images/Pacman.gif";
		img.style.width = "20px";
		img.style.height = "20px";
		btn.appendChild(img);
		
	};
	
	cloneButton.onclick = function(e){
		//template을 지원하는지
		
		//계속해서 새로운 클론을 만들어 냄. 
		if('content' in template){
			
			for(var i =0; i<data.length; i++){
				var clone = document.importNode(template.content, true);
				var tds = clone.querySelectorAll("td");
				
				tds[0].textContent = data[i].id;
				tds[1].textContent = data[i].title;
				tds[2].textContent = data[i].writerId;
				
				tbody.appendChild(clone);
			}
			//값이 성정된 content 를 복제
			
		}
	};
	
});
	
/* ---------------------------Ajax로 파일 전송하기와 트리거 --------------------------------------- */		

addEventListener("load", function() {
	var fileInput = document.querySelector("#ex4-upload input");
	var submitBtn = document.querySelector("#ex4-upload span");
	
	submitBtn.onclick = function(e){
		var event = new MouseEvent("click", {
			'view':window,
			'bubles':true,
			'cancelable':true
		});
		
		fileInput.dispatchEvent(event);
	};
	
});
	
</script>
</head>
<body>

	<!-- ------------------------------------Ajax로 파일 전송하기와 트리거 --------------------------------------------->
	<div id="ex4-upload">
	
		<input type="file" style="display: none;"/>
		<span style="border: 1px solid #999; border-radius: 5px; cursor: pointer; background: pink; padding: 3px;">파일선택</span>

	</div>
	<hr />

	<!-- ------------------------------------Ajax로 파일 전송하기 --------------------------------------------->
	<div id="ex3-upload">
		<form action="../../upload?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<div class="btn">
				<input type="submit" value="전송"/>
				<input type="button" value=""/>
			</div>
			
			<div id="clone-container">
				<table border="1">
					<tbody>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title"/></td>
						</tr>
						<tr>
							<td>첨부파일</td>
							<td><input type="file" name="file"/></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>
	<hr />

	<!-- ------------------------------------Temlplate 태그를 이용한 노드복제 예제 --------------------------------------------->
	<div id="ex2-clone">
		<div class="btn">
			<input type="button" value="단순복제"/>
			<input type="button" value="Ajax요청"/>
		</div>
		
		<div id="clone-container">
			<table border="1">
				<thead>
					<tr>
						<td></td>
						<td>제목</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
			<template>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</template>
		</div>
	</div>
	<hr />


	<!-- -------------------------------------노드복제 예제 --------------------------------------------->
	<div id="ex-clone">
		<div>
			<input type="button" value="단순복제"/>
		</div>
		
		<div id="clone-container">
			<table border="1">
				<thead>
					<tr>
						<td>코드</td>
						<td>코드</td>
						<td>제목</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input name="id" type="radio" value="1" /></td>
						<td>1</td>
						<td>안졸리다</td>
					</tr>
					<tr>
						<td><input name="id" type="radio" value="2" /></td>
						<td>2</td>
						<td>졸리지않다나는 </td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<hr />
	<!-- --------------------------------------기본행위 막기 예제 --------------------------------------------->
	<form action="">
		<input type="text" name="title" /><br /> <input type="submit"
			value="전송" /> <a href="">취소</a>
	</form>
	<hr />
	<!-- ---------------------노드 바꾸기 예제222 + 이벤트 심화 : 버블링과 캠처링---------------------------------->
	<input id="move-up-button" type="button" value="위로 옮기기">
	<div id="move-up-container">
		<table border="1">
			<thead>
				<tr>
					<td>코드</td>
					<td>코드</td>
					<td>제목</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input name="id" type="radio" value="1" /></td>
					<td>1</td>
					<td>하자고 하길 잘했어</td>
				</tr>
				<tr>
					<td><input name="id" type="radio" value="2" /></td>
					<td>2</td>
					<td>하나도 안졸려</td>
				</tr>
				<tr>
					<td><input name="id" type="radio" value="3" /></td>
					<td>3</td>
					<td>하나도dfdf 안졸려</td>
				</tr>
				<tr>
					<td><input name="id" type="radio" value="4" /></td>
					<td>4</td>
					<td>하123123나도 안졸려</td>
				</tr>
				<tr>
					<td><input name="id" type="radio" value="5" /></td>
					<td>5</td>
					<td>하나,.,.,도 안졸려</td>
				</tr>
			</tbody>
		</table>
		<img src="../images/1.jpg" /> <img src="../images/2.jpg" /> <img
			src="../images/3.jpg" />
	</div>

	<hr />
	<!-- ---------------------노드 바꾸기 예제 ---------------------------------->
	<input id="swap-node-button" type="button" value="노드 바꾸기">
	<div id="node-swap-container">
		<img src="../images/1.jpg" /> <img src="../images/2.jpg" /> <img
			src="../images/3.jpg" />
	</div>

	<hr />
	<!-- ---------------------텍슽츠 노드 추가 예제 ---------------------------------->
	<input id="add-text-node-button" type="button" value="텍스트노드 추가">
	<input id="add-img-node-button" type="button" value="이미지노드 추가">
	<input id="remove-node-button" type="button" value="노드 삭제">
	<div id="node-container"></div>

	<hr />

	<!-- ---------------------자식 노드 변경 예제 ---------------------------------->
	<input id="ch-node-button" type="button" value="자식노드 변경">
	<div id="ch-node-container">hello</div>

	<hr />


	<!-- ----------------------속성변경 예제 ---------------------------------->
	<input type="text" id="img-src">
	<input id="ch-img-button" type="button" value="이미지 변경">
	<div id="img-container">

		<img alt=""	src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5IgH9WrVDZoIk_IARJxWk2GO2Cg9nDRrs2mol2fGtVdTMh6X">

	</div>

	<hr />

	<!-- ----------------------selector api 예제 ---------------------------------->
	<input id="ch-button1" type="button" value="배경색 변경">
	<div id="module1">
		<div>1</div>
		<div>
			<div>2</div>
		</div>
		<div>3</div>

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
	<!-- ----------------------iframe window ---------------------------------->
	<div>
		<input id="nav-button" type="button" value="페이지전환" />
		<iframe src="notice.html" style="width: 500px; height: 300px;"></iframe>
	</div>



	<hr />
	<!-- ----------------------open window ---------------------------------->
	<div>
		<input type="button" value="새창띄우기" id="open-button" /> <input
			type="button" value="왼쪽으로이동" id="move-button" /> <input type="button"
			value="페이지이동" id="trans-button" />
	</div>


	<hr />
	<!-- ----------------------timer ---------------------------------->
	<p>
		남은시간 <span id="count-label">60</span>초 <input id="count-button"
			type="button" value="카운트 시작" />
	</p>
	<hr />

	<div id="ex">
		<input type="text" id="x" palaceholder="x값을 입력하세요" /> <input
			type="text" id="y" palaceholder="y값을 입력하세요" /> = <input type="button"
			value="더하기" id="add-button" /> <input type="text" value="결과"
			id="result" />
	</div>
</body>
</html>

<!-- type of = 데이터형식을 출력해줌.
제이슨사용시 표기법준수. 숫자에는 ""안넣음. -->