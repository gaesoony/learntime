<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/notice/noticeDetail.css">
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<div class="list-main">
    <div class="banner-section">
        <div class="banner">
            <div id="banner-title1"><span>공지사항</span></div>
            <div id="banner-title2"><span>런타임의 새로운 소식들!</span></div>
        </div>
    </div>
    <div class="notice-detail-list">
        <div class="notice-sign">
            <div class="line1">
                <div class="line-a"></div>
            </div>
            <div class="name-notice">공지사항</div>
            <div class="line2">
                <div class="line-c"></div>
            </div>
        </div>
        <div class="notice-title">
            <div class="profile-info-etc">
                <div class="admin-info">${vo.writer}</div>
                <div class="info-etc">
                    <div class="enroll-date-a">${vo.enrollDate }</div>
                    <div class="views-a"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png"> &nbsp;${vo.hit }</div>
                    <div class="reply-no"><img width="15px" height="15px" class="messages-notice" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">&nbsp; ${vo.cmt}</div>
                </div>
                <div class="title-cate-etc">
                    <div class="cate-notice-a">${vo.cateName }</div>
                    <div class="title-info">${vo.title}</div>
                </div>
            </div>
        </div>
        <div class="notice-content">${vo.content}</div>
    </div>
    <div class="notice-comments">
        <div class="reply-section">
            <div class="reply-num">${vo.cmt}개의 댓글</div>
            <div class="leave-comment">
                <div class="div-box-a">
                    <div class="div-box-b">
                        <div class="profile-box"><img width="70px" height="70px" src="/app/resources/img/main/Ellipse 2.png"></div>
                        <div class="div-box-d"></div>
                    </div>
                    <div class="div-box-c">
                        <div class="input-box"><input type="button" value="댓글쓰기"></div>
                    </div>
                </div>
            </div>
            <div class="comment-box">
                <div class="gathering-boxes">
                    <div class="comment-a">
                        <div class="profile-etc">
                            <div class="profile-pic"><img width="70px" height="70px" src="/app/resources/img/faq/image 127.png"></div>
                            <div class="profile-id"><img width="200px" height="70px" src="/app/resources/img/faq/image 91.png"></div>
                        </div>
                        <div class="leaved-comment">접속이 잘 안되네요</div>
                        <div class="hide-write-reply">
                            <div class="hide-reply">댓글 모두 숨기기</div>
                            <div class="write-reply">댓글 쓰기 </div>
                        </div>
                    </div>
                    <div class="hide-comment">
                        <div class="write-reply-reply">
                            <div class="leave-comment">
                                <div class="div-box-a">
                                    <div class="div-box-b">
                                        <div class="profile-box"><img width="70px" height="70px" src="/app/resources/img/main/Ellipse 2.png"></div>
                                        <div class="div-box-d"></div>
                                    </div>
                                    <div class="div-box-c">
                                        <div class="input-box"><input type="button" value="댓글쓰기"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <div class="comment-b-for-a" >
                        <div class="reply-reply">
                            <div class="profile-etc-re">
                                <div class="profile-pic-re"><img width="70px" height="70px" src="/app/resources/img/faq/image 130.png"></div>
                                <div class="profile-id-re"><img width="200px" height="70px" src="/app/resources/img/faq/image 129.png"></div> 
                            </div>
                            <div class="leaved-comment-re">@겨울의속삭임님<br>해당이슈는 수정하여 반영하였습니다. 감사합니다.</div>
                            <div class="hide-comment-re"><span>댓글쓰기</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
</div>






<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

<script>

    //대댓글 쓰기
    $('.write-reply').click(function(){
            $('.hide-comment').slideToggle();
        });


        
        
        // 댓글 펼치기
        $('.hide-reply').click(function(){
            $('.comment-b-for-a').slideToggle();
        });

</script>
</body>
</html>