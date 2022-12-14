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
					<img src="/app/${bv.writerImg}" alt="">
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
				<div id="lh-number-box" class="lh-number-box">${bv.lhCount}</div>
				<div id="hate" class="hate">
					<span class="material-symbols-rounded lh-icon">thumb_down</span>
				</div>				
			</div>

			<script>
			// 좋아요, 싫어요 요청
				$(document).ready(function() {
					//좋아요
					$('#like').click(function() {
						console.log('${loginMember}'+'${loginMember.imgPath}');
						likeRequest('L');
					});

					//싫어요
					$('#hate').click(function() {
						likeRequest('H');
					});
				});

				// 좋아요, 싫어요 서버로 전송
				function likeRequest(status) {
					$.ajax({
						url: '/app/community/board/like',
						type: 'post',
						data: {
						'boardNo': '${bv.no}',
						'userNo': '${loginMember.no}',
						'status': status
						},
						success: function(data) {
						// lh-number-box 안의 내용 비우기
						$('#lh-number-box').empty();
						
						// 들고온 데이터를 lh-number-box 안에 넣기
						$('#lh-number-box').append(data);

						// 좋아요/싫어요 버튼 색깔 변경 toggle
						calcLike();
						}
					});
				}

			</script>

			<!-- <script>

				$(document).ready(function() {
					//좋아요
					var cmtNo = $(this).siblings('.cmt-no').val();
					$('.cmt-like').click(function(cmtNo) {
						likeRequest('L', cmtNo);
					});

					//싫어요
					var cmtNo = $(this).siblings('.cmt-no').val();
					$('.cmt-hate').click(function(cmtNo) {
						likeRequest('H', cmtNo);
					});
				});

				// 좋아요, 싫어요 요청
				function likeRequest(status, cmtNo) {
					$.ajax({
						url: '/app/community/cmt/like',
						type: 'post',
						data: {
						'no': cmtNo,
						'userNo': '${loginMember.no}',
						'status': status
						},
						success: function(data) {
						// lh-number-box 안의 내용 비우기
						$('#lh-number-box').empty();
						
						// 들고온 데이터를 lh-number-box 안에 넣기
						$('#lh-number-box').append(data);

						// 좋아요/싫어요 버튼 색깔 변경 toggle
						calcLike();
						}
					});
				}

			</script> -->
			
			<div id="btns-box">
				<c:if test="${sessionScope.loginMember.no eq bv.writer}">
					<div id="modify-btn" onclick="location.href='/app/community/board/modify?bno=${bv.no}'">수정</div>
					<div id="delete-btn">삭제</div>
				</c:if>
			</div>

			<script>
				$('#delete-btn').click(function() {
					if(confirm('모든 정보가 삭제 됩니다.\n삭제하시겠습니까?')) {
						deleteRequest();
					}
				});
				function deleteRequest(){
					$.ajax({
						url: '/app/community/board/delete',
						type: 'post',
						data: {
							'bno': '${bv.no}'
						},
						success: function(data) {
							console.log(data);
							if(data == 1){
								alert('삭제가 완료되었습니다.');
								location.href='/app/community/board/list';
							}
						}
					});
				}
			</script>
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
								<img src="/app/${loginMember.imgName}" alt="" onerror="this.src='/app/resources/img/profile_default.png'">
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
							$(document).on('click', '#comment-write-btn', function(){
								$.ajax({
									url: '/app/community/comment/write',
									type : 'post',
									data : {
											'writer' : '${loginMember.no}',
											'boardNo' : '${bv.no}',
											'content' : $('.summernote').summernote('code'),
											'group' : null
											},
									contentType: "application/x-www-form-urlencoded; charset=UTF-8",
									success: function(data) {

										//서머노트에 작성한 내용을 비우기
										$('.summernote').summernote('code', '');
										//댓글 목록을 비우기
										$("#comment-list").html("");
										//댓글 목록을 가져오기
										
										var jsonData = $.parseJSON(data);
										
										$.each(jsonData.cvList, function(index, cvList) {
											var commentMain = '';
											if(cvList.depth == 0 || cvList.depth == null) {
												commentMain = '<div class=\"comment-main\">';
											} else if(cvList.depth == 1) {
												commentMain = '<div class=\"comment2-main\">';
											}

											if(cvList.deleteYn == 'Y') {
												var commentContent = '<span class="modi-dele modi"></span>'+
																	'<span class="modi-dele dele"></span>'+
																	'</div>'+
																	'<div class="comment-content">'+
																		'<p class="txt-grey">[삭제된 댓글입니다.]<br></p>';
												var commentBtnBox = '';
											}else{
												var commentContent = '<span class="modi-dele modi">수정</span>'+
																	'<span class="modi-dele dele">삭제</span>'+
																	'<input type="hidden" name="" class="comment-no" value="'+cvList.no+'">'+
																	'</div>'+
																	'<div class="comment-content">'+
																		'<p>'+cvList.content+'</p><br>';
												var commentBtnBox = '<div class="like-hate-box">'+
																	'<div class="like">'+
																		'<span class="material-symbols-rounded lh-icon">thumb_up</span>'+
																	'</div>'+
																	'<div class="lh-number-box red">'+cvList.likes+'</div>'+
																	'<div class="hate">'+
																		'<span class="material-symbols-rounded lh-icon">thumb_down</span>'+
																	'</div>'+
																	'<input type="hidden" name="" class="cmt-no" value="'+cvList.no+'">'+
																	'</div>';

											}
											
											var commentHtml = 
											'<div class="comment-box">' +
												commentMain +
													'<div class="comment-writer-box">' +
														'<div class="comment-writer-profile">' +
															'<img src="/app/' + cvList.writerImg + '" alt="resources" onerror="this.src=\'/app/resources/img/profile_default.png\'">' +
														'</div>' +
														'<span class="comment-writer">' + cvList.writerNick + '</span>' +
														'<span class="comment-write-time">' + cvList.enrollDate + '</span>' +
														commentContent +
														'<div class="cmt2-btn">' +
															'<span class="material-symbols-outlined reply-icon"> reply </span>' +
															'<span>댓글 쓰기</span>' +
														'</div>' +
													'</div>' +
												'</div>' +
												'<div class="comment-lh-box">' +
													commentBtnBox +
												'</div>' +
											'</div>' +
											'<div class="comment-write-box2">'+
												'<div class="comment-writer-box2">'+
													'<div class="comment-writer-profile2">'+
														'<img src="/app/${loginMember.imgName}" alt="" onerror="this.src=\'/app/resources/img/profile_default.png\'">'+
													'</div>'+
													'<span class="comment-writer2">${loginMember.nick}</span>'+
												'</div>'+
												'<div class="comment-area2">'+
													'<textarea class="comment-txt-area" name="editordata2"></textarea>'+
												'</div>'+
											'</div>'+
											'<input type="submit" class="comment-write-btn2" value="댓글 쓰기"></input>'+
											'<input type="hidden" class="group-no" name="group" value="' + cvList.group + '">'
										

											$("#comment-list").append(commentHtml);
											});
											
											// 대댓글 창 임시 숨기기
											$('.comment-write-box2').hide();
											$('.comment-write-box2').next().hide();

											$('.dele').click(function() {
												if(!confirm("삭제하시겠습니까?")) {
													return;
												}
												var commentNo = $(this).next().val();
												$.ajax({
													url: "/app/community/deleteComment",
													type: "post",
													data: {
														"commentNo": commentNo,
													},
													success: function(data) {
														console.log(data);
														location.reload();
													},
													error: function() {
														console.log(data);
													}
												});
											});

											//.cmt2-btn 클릭시 대댓글 창 토글로 보이기
											$('.cmt2-btn').click(function() {

												//로그인 여부 확인
												if('${loginMember}' == '') {
													alert('로그인이 필요한 서비스입니다.');
													return;
												}

												$(this).parent().parent().parent().next().toggle();
												$(this).parent().parent().parent().next().next().toggle();
											});
										
										}//success
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
					<!-- depth에 따른 댓글, 대댓글 구분 -->
					<div class="comment-box">
						<c:if test = "${cv.depth == 0 || cv.depth == null}">
							<div class="comment-main">
						</c:if>
						<c:if test = "${cv.depth == 1}">
							<div class="comment2-main">
						</c:if>
							<div class="comment-writer-box">
								<div class="comment-writer-profile">
									<img src="/app/${cv.writerImg}" alt="resources" onerror="this.src='/app/resources/img/profile_default.png'">
								</div>
								<span class="comment-writer">${cv.writerNick}</span>
								<span class="comment-write-time">${cv.enrollDate}</span>
								
								<c:if test = "${cv.deleteYn == 'Y'}">
								<span class="modi-dele modi"></span>
								<span class="modi-dele dele"></span>
							</div>
							<div class="comment-content">
									<p class = "txt-grey">[삭제된 댓글입니다]</p><br>
								</c:if>

								<c:if test = "${cv.deleteYn == 'N'}">
								<span class="modi-dele modi">수정</span>
								<span class="modi-dele dele">삭제</span>
								<input type="hidden" name="" class="comment-no" value="${cv.no}">
							</div>
							<div class="comment-content">
									<p>${cv.content}</p><br>
								</c:if>
								
								<div class="cmt2-btn">
									<span class="material-symbols-outlined reply-icon"> reply </span>
									<span>댓글 쓰기</span>
								</div>
							</div>
						</div>
						<div class="comment-lh-box">
							<c:if test = "${cv.deleteYn == 'N'}">
								<div class="like-hate-box">
									<div class="like cmt-like">
										<span class="material-symbols-rounded lh-icon">thumb_up</span>
									</div>
									<div class="lh-number-box red">${cv.likes}</div>
									<div class="hate cmt-hate">
										<span class="material-symbols-rounded lh-icon">thumb_down</span>
									</div>
									<input class="cmt-no" type="hidden" name="" value="${cv.no}">
								</div>
							</c:if>
							<c:if test = "${cv.deleteYn == 'Y'}"></c:if>
						</div>
					</div>

					<!-- 숨긴 대댓글 창 -->
					<div class="comment-write-box2">
						<div class="comment-writer-box2">
							<div class="comment-writer-profile2">
								<img src="/app/${loginMember.imgPath}" alt="" onerror="this.src='/app/resources/img/profile_default.png'">
							</div>
							<span class="comment-writer2">${loginMember.nick}</span>
						</div>
						<div class="comment-area2">
							<textarea class="comment-txt-area" name="editordata2"></textarea>
						</div>
					</div>
					<input type="submit" class="comment-write-btn2" value="댓글 쓰기"></input>
					<input type="hidden" class="group-no" name="group" value="${cv.group}">

				</c:forEach>
			</c:if>
			<!-- 댓글 반복문 끝 -->

			<!-- 댓글 좋아요 -->
			<script>
				$(document).ready(function() {
					//좋아요 하는데 해당 댓글 번호 가져오기
					var cmtNo = $(this).siblings('.cmt-no').val();
					$('.cmt-like').click(function(cmtNo) {
						likeRequest2('L', cmtNo);
					});

					//싫어요
					var cmtNo = $(this).siblings('.cmt-no').val();
					$('.cmt-hate').click(function(cmtNo) {
						likeRequest2('H', cmtNo);
					});
				});

				// 좋아요, 싫어요 요청
				function likeRequest2(status, cmtNo) {
					$.ajax({
						url: '/app/community/cmt/like',
						type: 'post',
						data: {
						'no': cmtNo,
						'userNo': '${loginMember.no}',
						'status': status
						},
						success: function(data) {
						// lh-number-box 안의 내용 비우기
						$('#lh-number-box').empty();
						
						// 들고온 데이터를 lh-number-box 안에 넣기
						$('#lh-number-box').append(data);

						// 좋아요/싫어요 버튼 색깔 변경 toggle
						calcLike();
						}
					});
				}
			</script>
			
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

	<script defer>
		// 대댓글 창 임시 숨기기
		$('.comment-write-box2').hide();
		$('.comment-write-box2').next().hide();
		//.cmt2-btn 클릭시 대댓글 창 토글로 보이기
		$('.cmt2-btn').click(function() {

			//로그인 여부 확인
			if('${loginMember}' == '') {
				alert('로그인이 필요한 서비스입니다.');
				return;
			}

			$(this).parent().parent().parent().next().toggle();
			$(this).parent().parent().parent().next().next().toggle();

			//다른 대댓글창 닫기
			$('.comment-write-box2').not($(this).parent().parent().parent().next()).hide();
			$('.comment-write-box2').next().not($(this).parent().parent().parent().next().next()).hide();

		});

		//대댓글 작성
		$(document).on('click', '.comment-write-btn2', function() {
			var content = $(this).prev().find('.comment-area2').find('.comment-txt-area').val();
			var group = $(this).next().val();

			//댓글 내용이 없을 경우
			if(content == '') {
				alert('댓글 내용을 입력해주세요.');
				return;
			}

			//댓글 작성
			$.ajax({
				url: '/app/community/comment/write',
				type: 'post',
				data: {
					'boardNo': '${bv.no}',
					'writer': '${loginMember.no}',
					'content': content,
					'group': group
				},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: 
				function(data) {

					//댓글 목록을 비우기
					$("#comment-list").html("");
					//댓글 목록을 가져오기
					var jsonData = $.parseJSON(data);
					$.each(jsonData.cvList, function(index, cvList) {
					
					var commentMain = '';
					if(cvList.depth == 0 || cvList.depth == null) {
						commentMain = '<div class=\"comment-main\">';
					} else if(cvList.depth == 1) {
						commentMain = '<div class=\"comment2-main\">';
					}

					if(cvList.deleteYn == 'Y') {
						var commentContent = '<span class="modi-dele modi"></span>'+
											'<span class="modi-dele dele"></span>'+
											'</div>'+
											'<div class="comment-content">'+
												'<p class="txt-grey">[삭제된 댓글입니다.]<br></p>';
											

						var commentBtnBox = '';
					}else{
						var commentContent = '<span class="modi-dele modi">수정</span>'+
											'<span class="modi-dele dele">삭제</span>'+
											'<input type="hidden" name="" class="comment-no" value="'+cvList.no+'">'+
											'</div>'+
											'<div class="comment-content">'+
												'<p>'+cvList.content+'</p><br>';
						var commentBtnBox = '<div class="like-hate-box">'+
											'<div class="like">'+
												'<span class="material-symbols-rounded lh-icon">thumb_up</span>'+
											'</div>'+
											'<div class="lh-number-box red">'+cvList.likes+'</div>'+
											'<div class="hate">'+
												'<span class="material-symbols-rounded lh-icon">thumb_down</span>'+
											'</div>'+
											'<input type="hidden" name="" class="cmt-no" value="'+cvList.no+'">'+
											'</div>';

					}

					var commentHtml = 
					'<div class="comment-box">' +
						commentMain +
							'<div class="comment-writer-box">' +
								'<div class="comment-writer-profile">' +
									'<img src="/app/' + cvList.writerImg + '" alt="resources" onerror="this.src=\'/app/resources/img/profile_default.png\'">' +
								'</div>' +
								'<span class="comment-writer">' + cvList.writerNick + '</span>' +
								'<span class="comment-write-time">' + cvList.enrollDate + '</span>' +

								commentContent +

								'<div class="cmt2-btn">' +
									'<span class="material-symbols-outlined reply-icon"> reply </span>' +
									'<span>댓글 쓰기</span>' +
								'</div>' +
							'</div>' +
						'</div>' +

						'<div class="comment-lh-box">' +

							commentBtnBox+

						'</div>' +
					'</div>' +

					
					'<div class="comment-write-box2">'+
						'<div class="comment-writer-box2">'+
							'<div class="comment-writer-profile2">'+
								'<img src="" alt="" onerror="this.src=\'/app/resources/img/profile_default.png\'">'+
							'</div>'+
							'<span class="comment-writer2">${loginMember.nick}</span>'+
						'</div>'+
						'<div class="comment-area2">'+
							'<textarea class="comment-txt-area" name="editordata2"></textarea>'+
						'</div>'+
					'</div>'+
					'<input type="submit" class="comment-write-btn2" value="댓글 쓰기"></input>'+
					'<input type="hidden" class="group-no" name="group" value="' + cvList.group + '">'


					$("#comment-list").append(commentHtml);
					});
					// 대댓글 창 임시 숨기기
					$('.comment-write-box2').hide();
					$('.comment-write-box2').next().hide();

					$('.dele').click(function() {
						if(!confirm("삭제하시겠습니까?")) {
							return;
						}
						var commentNo = $(this).next().val();
						$.ajax({
							url: "/app/community/deleteComment",
							type: "post",
							data: {
								"commentNo": commentNo,
							},
							success: function(data) {
								console.log(data);
								location.reload();
							},
							error: function() {
								console.log(data);
							}
						});
					});


					//.cmt2-btn 클릭시 대댓글 창 토글로 보이기
					$('.cmt2-btn').click(function() {

						//로그인 여부 확인
						if('${loginMember}' == '') {
							alert('로그인이 필요한 서비스입니다.');
							return;
						}

						$(this).parent().parent().parent().next().toggle();
						$(this).parent().parent().parent().next().next().toggle();
					});

				},//success
				error: function() {
					alert('댓글 작성 실패');
				}
			});
		});
	</script>

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
		//로그인멤버 체크하고 스크랩
		$(document).ready(function() {
			if("${loginMember}" == "") {
				$("#scrap").next().click(function() {
					alert("로그인이 필요한 서비스입니다.");
				});
			}
		});

		$(document).ready(function() {
			if("${lhs.scrap}" == "true" && "${loginMember}" != "") {
				$("#scrap").next().addClass("main-green-filled");
			}
		});

		// 스크랩 미리 채워놓기
		$(document).ready(function() {
			if("${lhsList[0].scrap}" === "true" && "${loginMember}" != "") {
				$("#scrap").next().addClass("main-green-filled");
			}
		});

		// 스크랩하기 버튼클릭시 안내문구
		$(document).ready(function() {
			$("#scrap").next().click(function() {
				if($("#scrap").next().hasClass("main-green-filled") == false && "${loginMember}" != "") {
					$("#scrap").next().after("<span id='scrap-alert'>스크랩되었습니다. 마이페이지에서 확인하세요.</span>");
					$("#scrap-alert").delay(2000).fadeOut();
				}
			});
		});
		
		$(document).ready(function() {
			if("${loginMember}" != ""){
				//스크랩 채우기
				$("#scrap").next().click(function() {
					$(".bookmark-icon").toggleClass("main-green-filled");
					//스크랩 서버
					$.ajax({
						url: "/app/community/scrap",
						type: "post",
						data: {
							"boardNo": "${bv.no}",
							"userNo": "${loginMember.no}"
						},
						success: function(data) {
							console.log(data);
						},
						error: function() {
							console.log(data);
						}
					});
				});
			}
		});
	</script>

	<script>
		// 좋아요 & 싫어요 미리 채워놓기(red-filled, blue-filled)
		$(document).ready(function() {
			console.log("${lhsList[0].status}");

			if(("${lhsList[0].status}" != "L" && "${lhsList[0].status}" != "H") || "${loginMember}" == "") {
				console.log("좋아요, 싫어요 없음");
				$("#like").children().removeClass("red-filled");
				$("#hate").children().removeClass("blue-filled");
				return;
			}

			if("${lhsList[0].status}" === "L") {
				console.log("좋아요");
				$("#like").children().addClass("red-filled");
				$("#hate").children().removeClass("blue-filled");
				return;
			}
			
			if("${lhsList[0].status}" === "H") {
				console.log("싫어요");
				$("#hate").children().addClass("blue-filled");
				$("#like").children().removeClass("red-filled");
				return;
			}

		});

		// 좋아요 & 싫어요
		$('.like').click(function(){
			$(this).children('span').toggleClass('red-filled')
			$(this).siblings('.hate').children('span').removeClass('blue-filled');
		});

		$('.hate').click(function(){
			$(this).children('span').toggleClass('blue-filled')
			$(this).siblings('.like').children('span').removeClass('red-filled');
		});

		// 좋아요 & 싫어요 채워 놓기
		calcLike();

		// 좋아요 & 싫어요 수 에따라 색상 변경
		function calcLike() {
			$('#lh-number-box').each(function(){
				if($(this).text() > 0){
					$(this).addClass('red');
					$(this).removeClass('blue');
				}else if($(this).text() < 0){
					$(this).addClass('blue');
					$(this).removeClass('red');
				}else{
					$(this).removeClass('red');
					$(this).removeClass('blue');
				}
			});
		}

		// 로그인멤버, 작성자가 같은지 check
		$(document).ready(function() {
			if("${loginMember.no}" !== "${bv.writer}" || "${loginMember.no}" === "null") {
				$("#modify-btn").hide();
				$("#delete-btn").hide();
			}
		});

		$('.dele').click(function() {
			if(!confirm("삭제하시겠습니까?")) {
				return;
			}
			var commentNo = $(this).next().val();
			$.ajax({
				url: "/app/community/deleteComment",
				type: "post",
				data: {
					"commentNo": commentNo,
				},
				success: function(data) {
					console.log(data);
					location.reload();
				},
				error: function() {
					console.log(data);
				}
			});
		});

	</script>
</body>
</html>