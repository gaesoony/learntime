<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/community/boardDetail.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>
<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	
	<div id="board-banner">
		<img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
	</div>

	<div class="cate-line">카테고리 - ${bv.cate}</div>

	<div id="main-wrap">
		<div id="content-info">
			<div id="writer-date">
				<div id="writer-profile">
					<img src="" alt="">
				</div>
				<span id="writer">${bv.writerNick}</span>
				<span id="enroll-date">${bv.enrollDate}</span>
			</div>
			<div id="hit-comment">
				<span id="hit">조회수 ${bv.hit}</span>
				|&nbsp
				<span id="comment-number">댓글수 3</span>
				<span id="scrap">스크랩하기</span>
				<span class="material-symbols-rounded bookmark-icon">bookmark</span>
			</div>
		</div>

		<div id="content">
			<h2>${bv.title}</h2>
			${bv.content}
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
				<div id="modify-btn" onclick="location.href='/app/community/board/modify?bno=${bv.no}'">수정</div>
				<div id="delete-btn" onclick="location.href=''">삭제</div>
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
						<textarea class="summernote" name="editordata"></textarea>
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 150,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR"
        });
    </script>
</body>
</html>