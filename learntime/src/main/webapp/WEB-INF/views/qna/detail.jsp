<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 썸머노트 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<style>
	.banner{
        height: 61px;
        background-color: #5ECC80;
    }
    .main{
        width: 1002px;
        margin: 0 auto;
        margin-top: 70px;
        margin-bottom: 50px;
    }
    .maintitle{
        font-size: 28px;
    }
    .title-start{
        float: left;
        color: #5ECC80;
        font-size: 50px;
        margin-right: 15px;
        padding-bottom: 10px;
    }
    .title-end{
        padding: 20px;
        line-height: 30px;
    }

    /* 상단 title 아래 요소들 */
    .profile{
        width: 30px;
        margin-top: 16px;
        margin-right: 10px;
    }
    .nick{
        font-size: 20px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .enrollDate{
        font-size: 20px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .heart{
        font-size: 20px;
        color: #5ECC80;
        vertical-align: middle;
        padding-right: 500px;
    }
    .thumbsup{
        font-size: 20px;
        vertical-align: middle;
        cursor: pointer;
    }
    .thumbsdown{
        font-size: 20px;
        vertical-align: middle;
        cursor: pointer;
    }
    .bookmark{
        font-size: 20px;
        vertical-align: middle;
        cursor: pointer;
    }
    .edit{
        vertical-align: middle;
    }
    .edit-btn{
        border: none;
        font-size: 18px;
        background-color: white;
        font-weight: 300;
        cursor: pointer;
    }
    .edit-btn-null{
        border: none;
        font-size: 18px;
        background-color: white;
        font-weight: 300;
    }
    .edit-btn:hover{
        color: #5ECC80;
        font-weight: 550;
    }
    .slash{
        font-size: 18px;
        vertical-align: middle;
        font-weight: 300;
    }
    .delete-btn{
        border: none;
        font-size: 18px;
        vertical-align: middle;
        cursor: pointer;
        font-weight: 300;
        background-color: white;
        padding-bottom: 19px;
    }
    .delete-btn:hover{
        color: #5ECC80;
        font-weight: 550;
    }
    .delete-btn-null{
        border: none;
        font-size: 18px;
        vertical-align: middle;
        font-weight: 300;
        background-color: white;
        padding-bottom: 19px;
    }
    

    /* 삭제 모달창 */
    .modal{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .modal .bg{
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.6);
    }
    .modalBox {
        position: absolute;
        background-color: #fff;
        width: 400px;
        height: 200px;
        padding: 15px;
        border-radius: 10px;
    }
    .hidden{
        display: none;
    }
    .modalTitle{
        font-size: 16px;
        text-align: center;
    }
    .closeBtn{
        display: block;
        border: none;
        color: #444444;
        background-color: white;
        font-size: 18px;
        text-align: right;
        cursor: pointer;
        margin-left: 370px;
        margin-bottom: 30px;
    }
    .closeBtn:hover{
        color: #5ECC80;
    }
    .modalBtn{
        display: grid;
        grid-template-columns: 150px 150px;
        column-gap: 30px;
        justify-content: center;
        margin-top: 55px;
    }
    .cancleBtn{
        margin: 0 auto;
        width: 90px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        background-color: white;
        font-size: 18px;
        cursor: pointer;
    }
    .cancleBtn:hover{
        background-color: #5ECC80;
        color: white;
        font-weight: 550;
    }
    .saveBtn{
        margin: 0 auto;
        width: 90px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        background-color: white;
        font-size: 18px;
        cursor: pointer;
    }
    .saveBtn:hover{
        background-color: #5ECC80;
        color: white;
        font-weight: 550;
    }

    /* 상단 라인 */
    .line1{
        border-bottom: 1px solid #C0C0C0;
        margin-bottom: 30px;
    }
    .content{
        font-size: 16px;
        color: #434343;
        line-height: 28px;
    }
    .two{
        margin-bottom: 80px;
    }
    .three{
        padding-bottom: 30px;
    }
    .ha{
        text-align: center;
        background-color: #AAAAAA;
        color: white;
        border-radius: 20px;
        padding: 10px;
        float: left;
        margin-right: 10px;
    }
    .hash2{
        background-color:  #AAAAAA;
        color: white;
    }
    .hash3{
        background-color:  #AAAAAA;
        color: white;
    }
    .middle{
        /* height: 100%; */
        background-color: #F4FBF6;
        padding-top: 70px;
        margin-bottom: -30px;
    }
    .middlemain{
        width: 1002px;
        /* height: 355px; */
        background-color: white;
        border: 1px solid #5ECC80;
        margin: 0 auto;
        border-radius: 10px;
    }
    .replyplz{
        color: black;
        padding-top: 30px;
        font-size: 18px;
        margin-top: 10px;
        margin-left: 20px;
        padding-bottom: 15px;
    }
    .profile2{
        width: 2vw;
        float: left;
        margin-left: 30px;
        margin-top: 30px;
        margin-right: 10px;
    }
    .replyplz-1{
        color: #989898;
        margin-left: 35px;
    }
    .input{
        width: 925px;
        margin: 0 auto;
        margin-top: 15px;
    }
    .input2{
        width: 820px;
        margin: 0 auto;
        margin-top: 15px;
    }
    .replybtn{
        width: 6vw;
        height: 4.5vh;
        margin-top: 10px;
        margin-bottom: 25px;
        background-color: #5ECC80;
        color: white;
        border-radius: 10px;
        margin-left: 870px;
        text-decoration: none;
        border-style: none;
        font-size: 15px;
        cursor: pointer;
    }
    .replybtn:hover{
        font-weight: 550;
    }
    .replybtn2{
        width: 6vw;
        height: 4.5vh;
        margin-top: 10px;
        background-color: #5ECC80;
        color: white;
        border-radius: 10px;
        margin-left: 815px;
        text-decoration: none;
        border-style: none;
        font-size: 15px;
        cursor: pointer;
    }
    .replybtn2:hover{
        font-weight: 550;
    }
    .end{
        width: 1002px;
        font-size: 20px;
        margin: 0 auto;
        color: #444444;
        padding-top: 50px;
        padding-bottom: 10px;
    }
    .fa-regular{
        float: left;
        margin-right: 15px;
    }
    .jjinend{
        width: 1002px;
        border: 1px solid #5ECC80;
        background-color: white;
        border-radius: 10px;
        margin: 0 auto;
        margin-bottom: 20px;
    }
    .profile3{
        width: 2vw;
        float: left;
        margin-left: 30px;
        margin-top: 20px;
        margin-right: 10px;
    }
    .endnick{
        font-size: 18px;
        color: black;
        padding: 25px;
    }
    .endenrollDate{
        font-size: 15px;
        color: #989898;
        margin-left: 35px;
        float: left;
        margin-right: 15px;
    }
    .endheart{
        font-size: 15px;
        color: #5ECC80;
        float: left;
        margin-right: 580px;
    }
    .reply-select-box{
        width: 3vw;
    }
    #resply-select{
        width: 4vw;
        border: none;
        background-color: white;
        color: #989898;
        font-size: 15px;
        cursor: pointer;
    }
    .edit1{
        float: left;
        margin-right: 5px;
    }
    #edit1{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        cursor: pointer;
    }
    .edit2{
        float: left;
        color: #989898;
        margin-right: 5px;
    }
    #edit3{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        float: left;
        cursor: pointer;
    }
    .endline1{
        width: 950px;
        margin: 0 auto;
        border-top: 1px solid #D8D7D7;
        /* margin-top: 10px; */
    }
    .endreply{
        width: 950px;
        margin: 0 auto;
        margin-top: 20px;
        color: #444444;
        line-height: 30px;
        margin-bottom: 30px;
        margin-left: 35px;
    }
    .endup{
        font-size: 20px;
        color: #444444;
        margin-left: 915px;
        cursor: pointer;
    }
    .enddown{
        font-size: 20px;
        color: #444444;
        cursor: pointer;
    }
    .endline2{
        width: 950px;
        margin: 0 auto;
        margin-top: 60px;
        border-top: 1px solid #D8D7D7;
    }
    .chat{
        font-size: 20px;
        color: #5ECC80;
        margin-left: 40px;
        margin-top: 30px;
        margin-bottom: 20px;
        font-weight: 550;
        cursor: pointer;
    }
    .profile4{
        width: 2vw;
        float: left;
        margin-left: 85px;
        margin-right: 10px;
        float: left;
    }
    .endend{
        color: #444444;
        float: left;
        font-size: 18px;
        margin-top: 7px;
    }
    .endendenrollDate{
        padding-top: 11px;
        font-size: 15px;
        color: #989898;
        margin-left: 20px;
        float: left;
        margin-right: 20px;
    }
    .endline3{
        width: 825px;
        margin: 0 auto;
        margin-top: 10px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .endendcontent{
        width: 825px;
        margin: 0 auto;
        line-height: 30px;
    }
    .endup2{
        font-size: 20px;
        color: #444444;
        margin-top: 30px;
        margin-left: 845px;
        cursor: pointer;
    }
    .enddown2{
        font-size: 20px;
        color: #444444;
        cursor: pointer;
    }
    .endline4{
        width: 825px;
        margin: 0 auto;
        margin-top: 60px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .endline5{
        width: 950px;
        margin: 0 auto;
        margin-top: 25px;
        margin-bottom: 30px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .pluschat{
        margin: 0 auto;
        font-size: 17px;
    }
    .endheart2{
        padding-top: 10px;
        font-size: 15px;
        color: #5ECC80;
        float: left;
        margin-right: 440px;
    }
    .edit4{
        float: left;
        margin-right: 5px;
    }
    #edit4{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        margin-top: 15px;
        cursor: pointer;
    }
    .edit5{
        float: left;
        color: #989898;
        margin-right: 5px;
        margin-top: 15px;
    }
    #edit6{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        margin-top: 15px;
        cursor: pointer;
    }
    .siderank{
        border: 1px solid #9D9D9D;
        width: 258px;
        height: 371px;
        float: left;
    }
    .sidebox{
        width: 7vw;
        float: left;
        margin-top: 200px;
        margin-left: 80px;
    }
    .side{
        width: 7vw;
        margin: 0 auto;
    }
    .si{
        background-color: #5ECC80;
        color: white;
        font-size: 20px;
        border-radius: 10px;
        text-align: center;
        padding: 10px;
        margin-bottom: 20px;
        box-shadow: 3px 3px 2px 2px #b1ebc3;
    }
    .pluschatbox{
        width: 82%;
        margin: 0 auto;
        padding: 20px;
        text-align: center;
        margin-bottom: 20px;
    }
    .pluschat{
        font-size: 18px;
        color: #444444;
    }
    .plusline{
        margin: 0 auto;
        width: 4vw;
        border-top: 2px solid #5ECC80;
    }
    .choice{
        width: 3vw;
        margin-left: 900px;
        color: #5ECC80;
        font-size: 40px;
    }
    .endsection{
        width: 100%;
        height: 150px;
        background-color: #F4FBF6;
        margin-bottom: -30px;
    }
    #reply{
        display: none;
    }
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>

    <!-- 왼쪽 사이드바 -->
    <div class="sidebox">
        <div class="side">
            <div class="si">
                <div>미해결</div>
            </div>
            <div class="si">
                <div><i class="fa-solid fa-thumbs-up"></i> ${qnaDetail.LIKES}</div>
            </div>
            <div class="si">
                <div><i class="fa-solid fa-thumbs-down"></i> ${qnaDetail.HATES}</div>
            </div>
            <div class="si">
                <i class="fa-solid fa-comment"></i> ${qnaDetail.REPLY_CNT}
            </div>
            <div class="si">
                <i class="fa-solid fa-bookmark"></i> 0
            </div>
        </div>
    </div>

    <!-- 상세조회 메인 부분 -->
    <form action="${path}/qna/detail" method="post">
        <div class="main">
        
            <div class="maintitle">
                <div class="title">
                    <div class="title-start">Q.</div>
                    <h2 class="title-end">[${qnaDetail.CATE_NO}]&nbsp${qnaDetail.TITLE}</h2>
                </div>
            </div>
            <div class="middletitle">
                <table>
                    <tr>
                        <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필"></td>
                        <td class="nick">${qnaDetail.WRITER}</td>
                        <td class="enrollDate">${qnaDetail.ENROLL_DATE}</td>
                        <td class="heart"><i class="fa-solid fa-thumbs-up"></i> ${qnaDetail.LIKES}</td>
                        <td class="thumbsup" id="thumbsup" onclick="changeColor5()"><i class="fa-regular fa-thumbs-up"></i></td>
                        <td class="thumbsdown" id="thumbsdown" onclick="changeColor6()"><i class="fa-regular fa-thumbs-down"></i></td>
                        <td class="bookmark" id="bookmark" onclick="changeColor7()"><i class="fa-regular fa-bookmark"></i></td>

                        <c:if test="${loginMember.nick == qnaDetail.WRITER}">
                            <td class="edit"><button type="button" class="edit-btn" onclick="location.href='${path}/qna/edit?qno=${qnaDetail.NO}&keyword=${vo.keyword}&type=${vo.type}&order=${vo.order}'">수정</button></td>
                            <td class="slash">/</td>
                            <td class="delete">
                                <button type="button" class="delete-btn">삭제</button>
                                <div class="modal hidden">
                                    <div class="bg"></div>
                                    <div class="modalBox">
                                        <input type="button" class="closeBtn" onClick="location.reload();" value="X"></input>
                                        <p class="modalTitle">게시물을 삭제하시겠습니까?</p>
                                        <div class="modalBtn">
                                            <input type="button" class="cancleBtn" value="취소" onClick="location.reload();"></input>
                                            <input type="button" class="saveBtn" onclick="location.href='${path}/qna/delete?no=${qnaDetail.NO}'" value="삭제"></input>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </c:if>

                        <c:if test="${loginMember.nick != qnaDetail.WRITER}">
                            <td class="edit"><button type="button" class="edit-btn-null" title="해당 글의 작성자만 가능합니다.">수정</button></td>
                            <td class="slash">/</td>
                            <td class="delete">
                                <button type="button" class="delete-btn-null" title="해당 글의 작성자만 가능합니다.">삭제</button>
                            </td>
                        </c:if>
                        
                    </tr>
                </table>
                <div class="line1"></div>
                <table class="two">
                    <tr>
                        <td class="content">
                            ${qnaDetail.CONTENT}
                        </td>
                    </tr>
                </table>
                <div class="three">
                    <ul class="hash">
                        <c:forEach items="${qnaDetail.tagList}" var="tag">
                            <li class="ha"><i class="fa-light fa-hashtag"></i>${tag.NAME}</li>
                        </c:forEach>
                    </ul>
                </div>
                <input type="hidden" name="no" value="${qnaList.NO}">
            </div>
    
        </div>
        <div class="middle">
            <c:if test="${loginMember != null}">
                <form action="${path}/qna/detail/writeAnswer" method="post">
                    <div class="middlemain">
                        <div><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                        <div class="replyplz">${loginMember.nick}님, 답변해주세요!</div>
                        <div class="replyplz-1">모두에게 도움이 되는 답변의 주인공이 되어주세요:)</div>
                        
                        <div class="input">
                            <textarea class="summernote" name="answer"></textarea>
                        </div>
                        <input type="hidden" name="qno" value="${qnaDetail.NO}">
                        <input type="hidden" name="mno" value="${loginMember.no}">
                        <input type="hidden" name="keyword" value="${qvo.keyword}">
                        <input type="hidden" name="type" value="${qvo.type}">
                        <input type="hidden" name="order" value="${qvo.order}">
                        <input type="submit" class="replybtn" value="답변 등록"></input>
                    </div>
                </form>
            </c:if>
    
            <div class="end">
                <i class="fa-regular fa-comment"></i>
                <div class="endword">총 ${qnaDetail.REPLY_CNT}개의 답변이 있습니다</div>
            </div>
            
            
            <c:forEach items="${answerList}" var="map">
                <div class="jjinend">
                    <c:if test="${map.SELECT_YN == 'Y'}">
                        <div class="choice"><i class="fa-solid fa-medal"></i></div>
                    </c:if>
                    <div><img class="profile3" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                    <div class="endnick">${map.WRITER}</div>
                    <div class="endenrollDate">${map.ENROLL_DATE}</div>
                    <div class="endheart"><i class="fa-solid fa-thumbs-up"></i> ${map.LIKES}</div>
                    <c:if test="${loginMember.nick == map.WRITER}">
                        <div class="edit1"><input type="button" id="edit1" value="답변 수정"></div>
                        <div class="edit2"> / </div>
                        <div class="edit3"><input type="button" id="edit3" value="삭제"></div>
                        <c:if test="${map.SELECT_YN == 'N'}">
                            <div class="reply-select-box"><input type="button" id="resply-select" onclick="location.href='${path}/qna/select?cno=${map.NO}'" value="/ 채택"></div>
                        </c:if>

                        <c:if test="${map.SELECT_YN == 'Y'}">
                            <div class="reply-select-box"><input type="button" id="resply-select" onclick="location.href='${path}/qna/select?cno=${map.NO}'" value="/ 채택"></div>
                        </c:if>

                    </c:if>
                    <div class="endline1"></div>
                    <div class="endreply">
                        ${map.CONTENT}
                    </div>

                    <c:if test="${loginMember != null}">
                        <div class="endup" id="endup" onclick="changeColor3()"><i class="fa-regular fa-thumbs-up"></i></div>
                        <div class="enddown" id="enddown" onclick="changeColor4()"><i class="fa-regular fa-thumbs-down"></i></div>
                    </c:if>
        
                    <div class="endline2"></div>
                    
                    <div class="chat" id="chat">댓글 <i class="fa-solid fa-chevron-right"></i></div>
        
                    <!-- 댓글 부분 -->
                    <div id="reply">
                        <c:forEach items="${map.commentList}" var="cmap">
                            <div><img class="profile4" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                            <div class="endend">${cmap.NICK}</div>
                            <div class="endendenrollDate">${cmap.ENROLL_DATE}</div>
                            <div class="endheart2"><i class="fa-solid fa-thumbs-up"></i> ${cmap.LIKES}</div>
                            <c:if test="${loginMember.nick == map.WRITER}">
                                <div class="edit4"><input type="button" id="edit4" value="댓글 수정"></div>
                                <div class="edit5"> / </div>
                                <div class="edit6"><input type="button" id="edit6" value="삭제"></div>
                            </c:if>
                            <div class="endline3"></div>
                            <div class="endendcontent">
                                ${cmap.CONTENT}
                            </div>

                            <c:if test="${loginMember != null}">
                                <div class="endup2" id="endup2" onclick="changeColor()"><i class="fa-regular fa-thumbs-up"></i></div>
                                <div class="enddown2" id="enddown2" onclick="changeColor2()"><i class="fa-regular fa-thumbs-down"></i></div>
                            </c:if>
            
                            <div class="endline4"></div>
                        </c:forEach>

                        <c:if test="${loginMember == null}">
                            <div class="replyLoginNull">로그인 후 댓글 작성이 가능합니다:)</div>
                        </c:if>
        
                        <c:if test="${loginMember != null}">
                            <div class="pluschat2" id="pluschat2">
                                <div class="input2">
                                    <textarea class="summernote2" name="editordata2"></textarea>
                                </div>
                                <button type="button" class="replybtn2">댓글 등록</button>
                                <div class="endline5"></div>
                            </div>
                        </c:if>
                            
                    </div>
                </div>
            </c:forEach>
            
            <div class="endsection"></div>
        </div>
    </form>
    

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

    <!-- 썸머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>

        // 삭제 모달
        const open = () => {
            document.querySelector(".modal").classList.remove("hidden");
        }
        const close = () => {
            document.querySelector(".modal").classList.add("hidden");
        }
        document.querySelector(".delete-btn").addEventListener("click", open);
        document.querySelector(".bg").addEventListener("click", close);
        document.querySelector(".cancleBtn").addEventListener("click", close);
        document.querySelector(".closeBtn").addEventListener("click", close);

        // 썸머노트
        $('.summernote').summernote({
            height: 130,
            lang: "ko-KR",
            placeholder: '- 답변 채택 시, 토큰 1개가 부여됩니다. <br><br> - 발급된 토큰은 마이페이지 또는 스킨샵에서 확인이 가능합니다.',
            disableResizeEditor: true,
        });

        $('.summernote2').summernote({
            height: 100,
            placeholder: '- 댓글을 작성해주세요:)',
            lang: "ko-KR",
            disableResizeEditor: true,
        });


        // 댓글 펼치기
        $('#chat').click(function(){
            $('#reply').slideToggle();
        });

        // 좋아요 && 싫어요 색깔 변경
        function changeColor(){
            document.getElementById("endup2").style.color = "#5ECC80";
        }
        function changeColor2(){
            document.getElementById("enddown2").style.color = "#5ECC80";
        }
        function changeColor3(){
            document.getElementById("endup").style.color = "#5ECC80";
        }
        function changeColor4(){
            document.getElementById("enddown").style.color = "#5ECC80";
        }
        function changeColor5(){
            document.getElementById("thumbsup").style.color = "#5ECC80";
        }
        function changeColor6(){
            document.getElementById("thumbsdown").style.color = "#5ECC80";
        }
        function changeColor7(){
            document.getElementById("bookmark").style.color = "#5ECC80";
        }
    </script>

</body>
</html>