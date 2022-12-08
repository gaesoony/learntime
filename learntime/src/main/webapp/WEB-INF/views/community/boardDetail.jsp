<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/boardDetail.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	
	<div id="board-banner">
		<img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
	</div>

	<div class="cate-line">커리어</div>

	<div id="main-wrap">
		<div id="content-info">
			<div id="writer-date">
				<div id="writer-profile">
					<img src="" alt="">
				</div>
				<span id="writer">망치맨</span>
				<span id="enroll-date">2022/11/07 21:10:10</span>
			</div>
			<div id="hit-comment">
				<span id="hit">조회수 1,150</span>
				|&nbsp
				<span id="comment-number">댓글수 3</span>
				<span id="scrap">스크랩하기</span>
				<span class="material-symbols-rounded bookmark-icon">bookmark</span>
			</div>
		</div>

		<div id="content">
			<h2>신입 개발자 연봉</h2>
			<p>
				안녕하세요. 현재 계속 구직 중인 신입 개발자 입니다.
				<br><br>
				한 에이전시에 합격했는데 신입 개발자 연봉으로 3000을 준다네요.
				<br><br>
				식대 지원 없고, 수습 기간 동안 90%만 준다고 해서 고민입니다..
				<br><br>
				취업하기 힘든 세상에 연봉이 어떻든 일단 취업부터 해야 할까요..?ㅜㅜ
				<br><br>
			</p>
		</div>

		<div id="content-btns-box">
			<div></div>
			<div id="like-hate-box">
				<div id="like">
					<span class="material-symbols-rounded lh-icon">thumb_up</span>
				</div>
				<div id="lh-number-box" class="red">29</div>
				<div id="hate">
					<span class="material-symbols-rounded lh-icon">thumb_down</span>
				</div>
			</div>

			<div id="btns-box">
				<div id="modify-btn">수정</div>
				<div id="delete-btn">삭제</div>
			</div>

		</div>

		<div id="comment-wrap">
			<form action="">
				<div id="comment-write-box">
					<div id="comment-writer-box">
						<div id="comment-writer-profile">
							<img src="" alt="">
						</div>
						<span id="comment-writer">망치맨</span>
					</div>
					<div id="comment-area">
						<textarea name="" id="" cols="30" rows="10" placeholder="api 넣을 예정임니다.....:("></textarea>
					</div>
				</div>
			</div>
			<input type="submit" id="comment-write-btn" value="댓글 쓰기"></input>
		</form>
		<div id="comment-list">
			<!-- jstl 반복문 나중에 써라..-->
			
			<div class="comment-box">
				<div class="comment-main">
					<div class="comment-writer-box">
						<div class="comment-writer-profile">
							<img src="/app/resources/img/profile01.png" alt="">
						</div>
						<span class="comment-writer">망치맨</span>
						<span class="comment-write-time">2 시간 전</span>
						<span class="modi-dele">수정</span>
						<span class="modi-dele">삭제</span>
					</div>
					<div class="comment-content">
						<p>좀더 받고 싶은데...</p>
					</div>
				</div>
				
				<div class="comment-lh-box">
					<div class="like-hate-box">
						<div class="like">
							<span class="material-symbols-rounded lh-icon">thumb_up</span>
						</div>
						<div class="lh-number-box red">20</div>
						<div class="hate">
							<span class="material-symbols-rounded lh-icon">thumb_down</span>
						</div>
					</div>
				</div>
			</div>

			<div class="comment-box">
				<div class="comment-main">
					<div class="comment-writer-box">
						<div class="comment-writer-profile">
							<img src="/app/resources/img/profile01.png" alt="">
						</div>
						<span class="comment-writer">망치맨</span>
						<span class="comment-write-time">2 시간 전</span>
						<span class="modi-dele">수정</span>
						<span class="modi-dele">삭제</span>
					</div>
					<div class="comment-content">
						<p>좀더 받고 싶은데...</p>
					</div>
				</div>
				
				<div class="comment-lh-box">
					<div class="like-hate-box">
						<div class="like">
							<span class="material-symbols-rounded lh-icon">thumb_up</span>
						</div>
						<div class="lh-number-box red">20</div>
						<div class="hate">
							<span class="material-symbols-rounded lh-icon">thumb_down</span>
						</div>
					</div>
				</div>
			</div>

			<div class="comment-box">
				<div class="comment-main">
					<div class="comment-writer-box">
						<div class="comment-writer-profile">
							<img src="/app/resources/img/profile01.png" alt="">
						</div>
						<span class="comment-writer">망치맨</span>
						<span class="comment-write-time">2 시간 전</span>
						<span class="modi-dele">수정</span>
						<span class="modi-dele">삭제</span>
					</div>
					<div class="comment-content">
						<p>좀더 받고 싶은데...</p>
					</div>
				</div>
				
				<div class="comment-lh-box">
					<div class="like-hate-box">
						<div class="like">
							<span class="material-symbols-rounded lh-icon">thumb_up</span>
						</div>
						<div class="lh-number-box red">20</div>
						<div class="hate">
							<span class="material-symbols-rounded lh-icon">thumb_down</span>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		













	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>