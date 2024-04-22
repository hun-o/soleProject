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
		<div class="work_space" id="work_space" style="height: 1000px;">
			<div style="background-color: white; width: 100%; height: 100%;">
				<div style="width: 100%; height: 100%;">
					<h2><b>상세페이지</b></h2>
					<div><input type="text" id="detailTitle"></div>
					<div><input type="text" id="detailContent"></div>
					<div><input type="text" id="detailComment"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

	var jsonData = [];
	// URL에 매핑된 seq 값 가져오기
	window.onload = function(){
		var currentUrl = window.location.href;
		var seq = currentUrl.split('?')[1];
		selectJsonData(seq);
	}
	
	// detail페이지 데이터 조회
	const selectJsonData = async function (seqUrl) {
		var seq = "";
		var title = "";
		try{
			const response = await fetch("/list/resultDetailList.do?seq="+seqUrl);
			jsonDeatilData = await response.json();

			console.log('jsonDeatilData', jsonDeatilData);
	  
			console.log('jsonDeatilData.success', jsonDeatilData.success[0].seq);

			seq = jsonDeatilData.success[0].seq;
			title = jsonDeatilData.success[0].title;
			content = jsonDeatilData.success[0].content;
			comment = jsonDeatilData.success[0].contentComment;
			
			$('#detailTitle').attr('value', title);
			$('#detailContent').attr('value', content);
			$('#detailComment').attr('value', comment);
		}catch(e){
			console.error(e);
		}
	}

</script>

</html>