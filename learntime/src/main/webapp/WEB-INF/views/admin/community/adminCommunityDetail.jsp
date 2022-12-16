<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/community/adminCommunityDetail.css">

<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            게시물 관리
        </div>


        <div id="content-main-wrap" class="shadow-light">
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
                    <!-- <span id="scrap">스크랩하기</span>
                    <span class="material-symbols-rounded bookmark-icon">bookmark</span> -->
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
                <div id="like-hate-box" display="none">
                    <div id="like">
                        <span class="material-symbols-rounded lh-icon">thumb_up</span>
                    </div>
                    <div id="lh-number-box" class="red">29</div>
                    <div id="hate">
                        <span class="material-symbols-rounded lh-icon">thumb_down</span>
                    </div>
                </div>
    
                <div id="btns-box">
                    <div id="modify-btn" onclick="location.href='/app/admin/community/modify'">수정</div>
                    <div id="delete-btn">삭제</div>
                </div>
            </div>
    
            <div id="comment-wrap">
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

        </div>
    </div>
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