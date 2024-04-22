<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.do</title>
<jsp:include page="./headerScript/headerScript.jsp"></jsp:include>
</head>
<body>
<!-- 	메뉴타이틀 -->
	<div class="main_title">
		JSP 게시판
	</div>
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
	
	<div class="work_space" id="work_space" >
		
	</div>
</div>
</body>
</html>