<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/qDetailListAdmin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
<div class="list-main-m">
    <div class="q-detail-list-m">
        <div class="q-sign-m">
            <div class="line1-m">
                <div class="line-a-m"></div>
            </div>
            <div class="name-q-m">1:1 문의게시판 </div>
            <div class="line2-m">
                <div class="line-b-m"></div>
            </div>
        </div>
        <div class="making-gap">
            <div class="q-title-date-m">
                <div class="q-title-cate">
                    <div class="category-q-m">멘토링</div>
                    <div class="title-q-m">멘토링 서비스가 궁금해요</div>
                </div>
                <div class="q-enrollDate-comment">
                    <div class="q-nick">user11</div>
                    <div class="date-q-m">2022.12.14</div>
                    <div class="q-hit">
                        <div class="q-reply-num-count">댓글수</div>
                        <div class="q-comment">3</div>
                    </div>
                </div>
            </div>
            <div class="empty1-m"></div>
            <div class="making-gap-a">
                <div class="q-content-m">
                    <textarea class="summernote" name="editordata"></textarea>
                </div>
                <div class="making-gap-b">
                    <div class="backBtn-m">
                        <div class="btn-to-m">공개</div>
                        <div class="btn-to-m">삭제</div>
                        <div class="btn-to-m">글목록</div>
                    </div>
                    <div class="reply-section">
                        <div class="reply-num">6개의 댓글</div>
                        <div class="leave-comment">
                            <div class="div-box-a">
                                <div class="div-box-b">
                                    <div class="profile-box"><img width="70px" height="70px" src="/app/resources/img/main/Ellipse 2.png"></div>
                                    <div class="div-box-d"></div>
                                </div>
                                <div class="div-box-c">
                                    <div class="input-box"><input type="text" value="댓글쓰기"></div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-box">
                            <div class="gathering-boxes">
                                <div class="comment-a">
                                    <div class="profile-etc">
                                        <div class="profile-pic"><img width="70px" height="70px" src="/app/resources/img/faq/image 127.png"></div>
                                        <div class="profile-id"><img width="200px" height="70px" src="/app/resources/img/faq/image 91.png"></div>
                                        <div class="good-or-bad">
                                            <div class="btn-good-or-bad">
                                                <div class="downBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/32/32195.png"></div>
                                                <div class="middleBtn">3</div>
                                                <div class="upBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/271/271239.png"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="leaved-comment">접속이 잘 안되네요</div>
                                    <div class="hide-comment">
                                        <div class="write-reply">댓글 쓰기 </div>
                                        <div class="hide-reply">댓글 모두 숨기기
                                            <div class="comment-b-for-a" >
                                                <div class="reply-reply">
                                                    <div class="profile-etc-re">
                                                        <div class="profile-pic-re"><img width="70px" height="70px" src="/app/resources/img/faq/image 130.png"></div>
                                                        <div class="profile-id-re"><img width="200px" height="70px" src="/app/resources/img/faq/image 129.png"></div>
                                                        <div class="good-or-bad-re">
                                                            <div class="btn-good-or-bad-re">
                                                                <div class="downBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/32/32195.png"></div>
                                                                <div class="middleBtn">3</div>
                                                                <div class="upBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/271/271239.png"></div>
                                                            </div>
                                                        </div> 
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
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script> -->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR"
        });





        $(document).ready(function(){
            $('.hide-reply').click(function(){
                $('.comment-b-for-a').toggle('slow');
            });
        });




    
    </script>

</body>
</html>