<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<div id="like" class="like">
					<span class="material-symbols-rounded lh-icon">thumb_up</span>
				</div>
				<div id="lh-number-box" class="lh-number-box">29</div>
				<div id="hate" class="hate">
					<span class="material-symbols-rounded lh-icon">thumb_down</span>
				</div>
			</div>

			<div id="btns-box">
				<div id="modify-btn" onclick="location.href='/app/community/board/modify?bno=${bv.no}'">수정</div>
				<div id="delete-btn" onclick="location.href=''">삭제</div>
			</div>

		</div>

		
		<div id="comment-wrap">
			<!-- 로그인이 되어 있지 않을때 댓글 작성 -->
			<c:if test="${sessionScope.loginMember == null}">
				<div id="login-info-txt">로그인 후에 댓글작성이 가능합니다 :)</div>
			</c:if>

			<!-- 로그인이 되있을 때 댓글 작성-->
			<c:if test="${sessionScope.loginMember != null}">
				
					<form action="/app/community/comment/write" method="post">
						<div id="comment-write-box">
							<div id="comment-writer-box">
								<div id="comment-writer-profile">
									<img src="" alt="" onerror="this.src='/app/resources/img/profile_default.png'">
								</div>
								<span id="comment-writer">${loginMember.nick}</span>
							</div>
							<div id="comment-area">
								<textarea class="summernote" name="editordata"></textarea>
							</div>
						</div>
					<input type="submit" id="comment-write-btn" value="댓글 쓰기"></input>
					</form>

					<!-- 댓글 등록 할건데 loginMember.nick, loginMember.id, editordata를 날려주는 ajax 함수  -->
					<script>
						$(document).ready(function() {
							$('#comment-write-btn').click(function() {
								$.ajax({
									url : '/app/community/comment/write',
									type : 'post',
									data : {
										'writer' : '${loginMember.no}',
										'boardNo' : '${bv.no}',
										'content' : $('.summernote').summernote('code')
									},
									success : function(data) {
										alert('댓글 등록 성공');
										location.reload();
									},
									error : function() {
										alert('댓글 등록 실패');
									}
								});
							});
						});
					</script>
				
			</c:if>
		</div>


		<div id="comment-list">
			<!-- cvList 의 첫번째 인덱스에 데이터가 없다면 실행되는 코드-->
			<c:if test = "${cvList[0] == null}">
				<div class="comment-box">
					<div class="comment-main">
						<div class="comment-content" id="null-cmt">
							작성 된 댓글이 없습니다.
						</div>
					</div>
				</div>
			</c:if>
		
			<!-- 댓글 반복문 -->
			<c:if test = "${cvList != null}">
				<c:forEach var="cv" items="${cvList}">
					<div class="comment-box">
						<div class="comment-main">
							<div class="comment-writer-box">
								<div class="comment-writer-profile">
									<img src="/app/${cv.writerImg}" alt="resources" onerror="this.src='/app/resources/img/profile_default.png'">
								</div>
								<span class="comment-writer">${cv.writerNick}</span>
								<span class="comment-write-time">${cv.enrollDate}</span>
								<span class="modi-dele">수정</span>
								<span class="modi-dele">삭제</span>
							</div>
							<div class="comment-content">
								<p>${cv.content}</p>
							</div>
						</div>

						<div class="comment-lh-box">
							<div class="like-hate-box">
								<div class="like">
									<span class="material-symbols-rounded lh-icon">thumb_up</span>
								</div>
								<div class="lh-number-box red">${cv.likes}</div>
								<div class="hate">
									<span class="material-symbols-rounded lh-icon">thumb_down</span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>

		

			<!-- 댓글 반복문 끝 -->
			
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
            height: 130,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR",
			disableResizeEditor: true,
			focus: false
        });




		
    </script>

	<script>
		$('.like').click(function(){
			$(this).children('span').toggleClass('red-filled')
			$(this).siblings('.hate').children('span').removeClass('blue-filled');


			//.. 좋아요... 숫자.. 색깔..
		
			calcLike();

		});

		$('.hate').click(function(){
			$(this).children('span').toggleClass('blue-filled')
			$(this).siblings('.like').children('span').removeClass('red-filled');
		});


		
		function calcLike() {
		$('.lh-number-box').each(function(){
			if($(this).text() > 0){
			$(this).addClass('red');
			}else if($(this).text() < 0){
			$(this).addClass('blue');
			}else{
			$(this).removeClass('red');
			$(this).removeClass('blue');
			}
		});
		}



	</script>
</body>
</html>