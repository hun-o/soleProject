<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.do</title>
<jsp:include page="../headerScript/headerScript.jsp"></jsp:include>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
<!-- 	메뉴타이틀 -->
	<div class="main_title">JSP 게시판</div>
<!-- 	회원가입, 로그인 버튼 navigation -->
	<div class="main_div_nav">
		<nav class="main_nav">
			<ul class="main_ul">
				<li class="main_li">
					<input type="button" class="main_input custom-btn btn-1" onclick="console.log('회원가입');" value="회원가입">
					<input type="button" class="main_input login_button custom-btn btn-1" onclick="console.log('로그인');" value="로그인">
				</li>
			</ul>
		</nav>
	</div>
<!-- 	사이드 메뉴바 -->
	<div class="work_area">
		<div class="main_menu" style="display: inline-block;">
		    <div>메뉴</div>
		     <ul>
		       	<li><a href="/">메인화면</a></li>
		        <li><a href="/select/list.do">구경하기</a></li>
		        <li><a href="/insert/newPost">작성하기</a></li>
		        <li><a href="/공지사항/list.do">공지사항</a></li>
		        <li><a href="/select/map.do">Map</a></li>
		    </ul>
		</div>
<!-- 		화면 -->
		<div class="work_space" id="work_space" >
			<div style="background-color: white; width: 100%; height: 100%;">
				<div style="width: 100%; height: 100%;">
					<div id="wrapper"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var jsonData 		= [];
	var jsonSelectData 	= [];
		
	window.onload=function(){
		
		console.log('Jsp 실행');
		
		selectJsonData();
		
	}
	const selectJsonData = async function () {
		  const response = await fetch("/list/resultList.do");
		  jsonData = await response.json();
		  createSelectGrid(jsonData);
	}

	const createSelectGrid = function(jsonData){
		const data = jsonData;
		
		$("div#wrapper").Grid({
		 	  columns: [
		 		 {name: 'seq', width: '100px' },
		 		 {
		 	        name: 'title',
		 	        width: '600px',
		 	        attributes: (cell, row, column) => {
		 	          if (cell) { 
		 	        	  return{
		 	        		 'onclick': () => selectDetilPage(row._cells[0].data),
		 	        	  }
		 	          }
		 	        },
		 	      },
		 	      {name: 'selectCount', width: '300px' },
		 	      {name: 'insertDate', width: '300px' },
		 	      ],
		 	  search: true,
		 	  pagination: {
		 		    limit: 10,
		 		    summary: true
		 		  },
		 	  data: data.success,
		 	  resizable: true,
	 	  	  sort: true,
	 	  	  width: '99.6%',
		 	  style: {
		 	    table: {
		 	      border: '3px solid #ccc'
		 	    },
		 	    th: {
		 	      'background-color': '#ccc',
		 	      'color': '#000',
		 	      'border-bottom': '3px solid #ccc',
		 	      'text-align': 'center'
		 	    },
		 	    td: {
		 	    	'text-align': 'center'
		 	    }
		 	  },
		 	  language: {
		 	    'search': {
		 	      'placeholder': '제목'
		 	    }
		 	  }
	 	});
	}
	
	const selectDetilPage = async function(seq){
// 		const detailPage = "/select/detail.do?seq=" + seq;
		window.location.href = "/select/detail.do?seq=" + seq;
	}
	
</script>

</html>