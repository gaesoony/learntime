<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/admin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

	<div class="side-bar">
		<div class="logo-box">
			<a href="/app/main">
				<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo_green1.png" alt="learntime-logo">
			</a>
		</div>
		<div class="admin-profile-box">
			<div id="admin-profile">
				<div id="profile-img"></div>
				<div id="profile-content">
					<div id="welcome">Welcome,</div>
					<div id="admin-name">AdminNick님</div>
					<div id="login-date">최근 로그인 2022/12/12 20:19:22</div>
				</div>
				<div id="admin-config">
					<span id="config-icon" class="material-symbols-rounded">
						settings </span>
				</div>
			</div>
			<div id="logout">log out</div>
		</div>
		<div class="menu sub_menu" id="sub-menu">
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">grid_view</span> <span><a
						href="">대시 보드</a></span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">account_circle</span>
					<span>회원 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">회원 목록</a></li>
					<li><a href="#">회원 등급</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">groups</span> <span>스터디/프로젝트
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">스터디/프로젝트 목록</a></li>
					<li><a href="#">환경 설정</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">school</span> <span>지식인
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴2-1</a></li>
					<li><a href="#">소메뉴2-2</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">edit</span> <span>공부인증
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">co_present</span> <span>멘토링
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">forum</span> <span>자유게시판
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="/app/admin/community/board">게시물 관리</a></li>
					<li><a href="#">댓글 관리</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">notifications</span>
					<span>공지사항 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">quiz</span> <span>FAQ
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">contact_support</span>
					<span>신규 문의 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">storefront</span> <span>스킨샵
						관리</span> <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">local_police</span>
					<span>뱃지 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">smart_button</span>
					<span>배너 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">backup_table</span>
					<span>팝업 관리</span> <span
					class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
			<ul class="big_menu">
				<li><span class="material-symbols-rounded">pie_chart</span> <span>통계</span>
					<span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
				</li>
				<ul class="small_menu">
					<li><a href="#">소메뉴1-1</a></li>
					<li><a href="#">소메뉴1-2</a></li>
					<li><a href="#">소메뉴1-3</a></li>
					<li><a href="#">소메뉴1-4</a></li>
				</ul>
			</ul>
		</div>
	</div>
	<!---->
	<!-- 아코디언 메뉴 -->
	<script>
		$(function() {
			// 소메뉴 드랍
			$(".sub_menu ul.small_menu").hide();
			$(".big_menu>li").click(function() {
				$(".sub_menu ul.small_menu").not($(this).next()).slideUp(200);
				$(this).next().slideToggle(200);
			});
		});
	</script>


	<!-- 높이 맞춰주기
	<script defer>
		$(function(){
			$('.sidebar').css('height', $('#content-wrap').height());
		});

		console.log($('#content-wrap').height());

		console.log($('.sidebar').height());

	</script> -->

	<!-- 사이드 스크롤바 -->

	<script>
		window.addEventListener("resize", function () {
			console.log(window.innerHeight);
			const menu = document.querySelector("#sub-menu");
			console.log(menu);
			menu.style.height = window.innerHeight - 340 + "px";
		});
		console.log(window.innerHeight);
		const menu = document.querySelector("#sub-menu");
		menu.style.height = window.innerHeight - 340 + "px";
	</script>
	