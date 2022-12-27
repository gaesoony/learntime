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

				<script>
					//로그인멤버가 없을시 스크랩하기 버튼 비활성화
					$(document).ready(function() {
						if("${loginMember}" == "") {
							$("#scrap").next().attr("disabled", true);
						}
					});
					
					$(document).ready(function() {
						if("${lhs.scrap}" == "true") {
							$("#scrap").next().addClass("main-green-filled");
						}
					});


					// 스크랩하기 버튼클릭시 안내문구
					$(document).ready(function() {
						$("#scrap").next().click(function() {
							if($("#scrap").next().hasClass("main-green-filled") == false) {
								$("#scrap").next().after("<span id='scrap-alert'>스크랩되었습니다. 마이페이지에서 확인하세요.</span>");
								$("#scrap-alert").delay(2000).fadeOut();
							}
						});
					});

					
					// 스크랩 클릭시 채워짐..
					$(document).ready(function() {
						$("#scrap").next().click(function() {
						$(".bookmark-icon").toggleClass("main-green-filled");
						});
					});	


					//스크랩하기 서버
					$(document).ready(function() {
						$("#scrap").next().click(function() {
							$.ajax({
								url: "/app/community/scrap",
								type: "post",
								data: {
									"boardNo": "${bv.no}",
									"userNo": "${loginMember.no}",
									"scrap": "${lhsList[0].scrap}"
								},
								success: function(data) {
									console.log("성공"+ data);

								}
								
								,
								error: function() {
									console.log("실패" + data);
								}
							});
						});
					});
					
					
					
				</script>




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
				<div id="delete-btn" onclick="location.href='/app/community/board/delete?bno=${bv.no}'">삭제</div>
			</div>

		</div>

		
		<div id="comment-wrap">
			<!-- 로그인이 되어 있지 않을때 댓글 작성 -->
			<c:if test="${sessionScope.loginMember == null}">
				<div id="login-info-txt">로그인 후에 댓글작성이 가능합니다 :)</div>
			</c:if>

			<!-- 로그인이 되있을 때 댓글 작성-->
			<c:if test="${sessionScope.loginMember != null}">
				
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
					
					<script>

						$(document).ready(function() {
							$('#comment-write-btn').click(function() {
							$.ajax({
								url: '/app/community/comment/write',
								type : 'post',
								data : {
										'writer' : '${loginMember.no}',
										'boardNo' : '${bv.no}',
										'content' : $('.summernote').summernote('code')
										},
								contentType: "application/x-www-form-urlencoded; charset=UTF-8",
								success: function(data) {

									//서머노트에 작성한 내용을 비우기
									$('.summernote').summernote('code', '');
									//댓글 목록을 비우기
									$("#comment-list").html("");
									//댓글 목록을 가져오기
									console.log(data);
									var jsonData = $.parseJSON(data);
									
									$.each(jsonData.cvList, function(index, cvList) {
									var commentHtml = 
										'<div class="comment-box">' +
										'<div class="comment-main">' +
											'<div class="comment-writer-box">' +
											'<div class="comment-writer-profile">' +
												'<img src="/app/' + cvList.writerImg + '" alt="resources" onerror="this.src=\'/app/resources/img/profile_default.png\'">' +
											'</div>' +
											'<span class="comment-writer">' + cvList.writerNick + '</span>' +
											'<span class="comment-write-time">' + cvList.enrollDate + '</span>' +
											'<span class="modi-dele">수정</span>' +
											'<span class="modi-dele">삭제</span>' +
											'</div>' +
											'<div class="comment-content">' +
											'<p>' + cvList.content + '</p>' +
											'</div>' +
										'</div>' +
										'<div class="comment-lh-box">' +
											'<div class="like-hate-box">' +
											'<div class="like">' +
												'<span class="material-symbols-rounded lh-icon">thumb_up</span>' +
											'</div>' +
											'<div class="lh-number-box red">' + cvList.likes + '</div>' +
											'<div class="hate">' +
												'<span class="material-symbols-rounded lh-icon">thumb_down</span>' +
											'</div>' +
											'</div>' +
										'</div>' +
										'</div>';
									$("#comment-list").append(commentHtml);
									});
								}
								});
							});
						});

					</script>
				
			</c:if>
		</div>


		<div id="comment-list">
			<!-- cvList 의 첫번째 인덱스에 데이터가 없다면 실행-->
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
								<span class="modi-dele modi">수정</span>
								<span class="modi-dele dele">삭제</span>
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

	<!-- 좋아요 & 싫어요 -->
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

	<script>
		// 로그인이 되어있지 않거나 로그인한 회원이 작성자가 아닐때 버튼 hide
		$(document).ready(function() {
			if("${loginMember.no}" !== "${bv.writer}" || "${loginMember.no}" === "null") {
				$("#modify-btn").hide();
				$("#delete-btn").hide();
			}
		});
	</script>
</body>
</html>