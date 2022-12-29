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

        <script>
            console.log("${bv.enrollDate}");

        </script>
        
        <div id="content-main-wrap" class="shadow-light">
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
                    <span id="comment-number">댓글수 ${bv.cmtCount}</span>
                    <!-- <span id="scrap">스크랩하기</span>
                    <span class="material-symbols-rounded bookmark-icon">bookmark</span> -->
                </div>
            </div>
    
            <div id="content">
                <h2>${bv.title}</h2>
                <p>
                    ${bv.content}
                </p>
            </div>
    
            <div id="content-btns-box">
                <div></div>
                <div id="like-hate-box" display="none">
                    <div id="like">
                        <span class="material-symbols-rounded lh-icon">thumb_up</span>
                    </div>
                    <div id="lh-number-box" class="red">${bv.lhCount}</div>
                    <div id="hate">
                        <span class="material-symbols-rounded lh-icon">thumb_down</span>
                    </div>
                </div>
    
                <div id="btns-box">
                    <div id="modify-btn" onclick="location.href='/app/admin/community/board/modify?bno=${bv.no}'">수정</div>
                    <div id="delete-btn" onclick="location.href='/app/admin/community/board/delete?bno=${bv.no}'">삭제</div>
                </div>
            </div>
    
            <div id="comment-wrap">
                <div id="comment-list">
                    <!-- jstl 반복문 나중에 써라..-->
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
                                        <span class="modi-dele modi">수정</span>
                                        <span class="modi-dele dele">삭제</span>
                                    </div>
                                    <div class="comment-content">
                                        <p>${cv.content}</p><br>
                                        <div class="cmt2-btn">
                                            <span class="material-symbols-outlined reply-icon"> reply </span>
                                            <span>댓글 쓰기</span>
                                        </div>
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

        </div>
    </div>

</body>
</html>