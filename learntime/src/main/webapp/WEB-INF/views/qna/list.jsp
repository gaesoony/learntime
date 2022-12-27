<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .banner{
        width: 100%;
        padding: 25px 0px;
        height: 200px;
        background-color: #333B3D;
        box-sizing: border-box;
    }
    .banner>div{
        width: 1200px;
        margin-left: 170px;
        color: white;
    }
    .main{
        width: 100%;
        height: 100%;
    }
    .bannertitle1{
        margin-top: 40px;
        font-size: 25px;
        font-weight: 550;
    }
    .bannertitle2{
        margin-top: 15px;
        font-size: 16px;
    }
    .sidebar{
        width: 190px;
        height: 310px;
        padding: 20px;
        margin-top: 45px;
        background-color: white;
        border: 1px solid #9D9D9D;
        border-radius: 10px;
        float: left;
        margin-left: 35px;
    }
    .crown{
        width: 1.5vw;
    }
    .profile{
        width: 30px;
        float: left;
        margin-bottom: 10px;
    }
    .sideid{
        width: 9vw;
        margin-left: 10px;
        float: left; 
        font-size: 16px; 
        margin-bottom: 20px;
    }
    .sidenum{
        margin: 10px;
        font-size: 16px;
        vertical-align: top;
    }
    .mainbody{
        width: 1002px;
        margin: 0 auto;
        margin-top: 20px;
    }
    .mainside{
        padding: 40px;
    }
    .side-category{
        width: 70px;
        border: none;
        background-color: white;
        font-size: 18px;
        color: gray;
        text-decoration: none;
    }
    .active{
        color: black;
        font-weight: 550;
    }
    .line1{
        width: 100%;
        border-top: 2px solid rgb(157, 157, 157);
        margin-top: 10px;
        
    }
    .sidetitle{
        font-size: 16px;
        font-weight: 550;
        margin: 0 auto;
        margin-bottom: 20px;
    }
    .searchbar{
        margin-left: 10px;
    }
    .search{
        margin-top: 20px;
        margin-bottom: 20px;
        width: 740px;
        height: 35px;
        border: 1px solid #979797;
        border-radius: 10px;
        padding-left: 20px;
        float: left; 
    }
    .searchblank{
        width: 80%;
        outline: none;
        border: none;
        text-decoration: none;
        font-size: 18px;
        margin-top: 4px;
        color: black;
    }
    .searchbtn{
        margin-top: 20px;
        margin-left: 19px;
        width: 7vw;
        height: 35px;
        text-decoration: none;
        background-color: #5ECC80;
        color: white;
        border-radius: 10px;
        border: none;
        font-size: 18px;
    }
    .catelist{
        margin-top: 30px;
        margin-bottom: 15px;
        margin-left: 15px;
        width: 65vw;
    }
    .cate{
        float: left;
        margin-right: 462px;
        display: flex;
        padding-top: 20px;
    }
    .writebtn{
        text-decoration: none;
        border: none;
        background-color: #D1F1DB;
        color: #666666;
        font-size: 16px;
        width: 7vw;
        height: 35px;
        border-radius: 10px;
    }
    .ca{
        margin-right: 10px;
        color: #B7B7B7;
    }
    .ca:hover{
        color: #333B3D;
        font-weight: 550;
    }
    .line2{
        border-top: 1px solid #B7B7B7;
    }
    .titleb{
        height: 100%;
        width: 97%;
        margin: 0 auto;
        margin-top: 30px;
        line-height: 25px;
    }
    .title{
        width: 40vw;
        font-size: 18px;
        font-weight: 550;
        line-height: 30px;
    }
    .contentbox{
        height: 100%;
    }
    .content{
        width: 80%;
        font-size: 16px;
        color: #6F6F6F;
        margin-top: 5px;
        float: left;
        line-height: 20px;
    }
    .circle{
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background-color: #5ECC80;
        margin-left: 790px;
        
    }
    .replytitle{
        color: white;
        font-size: 30px;
        font-weight: 550;
        display: block;
        margin-left: 37px;
        margin-top: 20px;
        margin-bottom: 10px;
        padding-top: 15px;
    }
    .replycontent{
        color: white;
        font-size: 15px;
        margin-left: 31px;
    }
    .hashtagbox{
        width: 78%;
        margin-bottom: 10px;
    }
    .hashtag{
        display: flex;
    }
    .hash{
        padding: 6px;
        background-color: #AAAAAA;
        color: white;
        border-radius: 15px;
        margin-right: 10px;
        font-size: 13px;
    }
    .etcbox{
        margin-left: 3px;
        margin-bottom: 15px;
    }
    .etc{
        display: flex;
        color: #6F6F6F;
    }
    .profile2{
        width: 30px;
    }
    .etc>li{
        margin-right: 10px;
    }
    .thumbsup{
        color: #5ECC80;
    }
    .line3{
        border-top: 1px solid #B7B7B7;
    }
    .bottom{
        width: 100%;
        height: 30vh;
    }

</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="banner">
        <div class="bannertitle1">묻고 답해요</div>
        <div class="bannertitle2">미래 개발자들의 커뮤니티!! 함께 토론해보아요:)</div>
    </div>

        <form action="${path}/qna/list" method="post">
            <div class="main">
                <div class="sidelist">
                    <div class="sidebar">
                        <div class="sidetitle"><img class="crown" src="/app/resources/img/qna/crown.png" alt="왕관"> 답변 채택 랭킹</div>
                        <table>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                            <tr>
                                <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></td>
                                <td class="sideid">nick01</td>
                                <td class="sidenum">25</td>
                            </tr>
                        </table>
                    </div>
                    <div class="mainbody">
                        <div class="mainside">
                            <button href="#none" class="side-category" style='cursor:pointer;'>전체</button>
                            <button href="#none" class="side-category" style='cursor:pointer;'>해결</button>
                            <button href="#none" class="side-category" style='cursor:pointer;'>미해결</button>
                            <div class="line1"></div>
    
                            <!-- 검색 -->
                            <div class="searchbar">
                                <div class="search">
                                    <i class="fa-solid fa-magnifying-glass fa-lg"></i>
                                    <input type="text" class="searchblank" placeholder="궁금한 질문을 검색해보세요!"> 
                                </div>
                                <input type="submit" class="searchbtn" value="검색" style='cursor:pointer;'>
                            </div>
    
                            <!-- 카테고리 & 글쓰기 -->
                            <div class="category">
                                <div class="catelist">
                                    <ul class="cate">
                                        <li><a href="" class="ca">· 최신순</a></li>
                                        <li><a href="" class="ca">· 정확도순</a></li>
                                        <li><a href="" class="ca">· 답변 많은순</a></li>
                                        <li><a href="" class="ca">· 좋아요순</a></li>
                                    </ul>
                                    <c:if test="${loginMember != null}">
                                        <input type="button" onclick="location.href='${path}/qna/write'" class="writebtn" value="글쓰기✏️" style='cursor:pointer;'>
                                    </c:if>
                                    <c:if test="${loginMember == null}">
                                        <input type="button" onclick="login();" class="writebtn" value="글쓰기✏️" style='cursor:pointer;'>
                                    </c:if>
                                </div>
                                <div class="line2"></div>
                            </div>

                            <!-- 본문 리스트 -->
                            <div class="titlebox" onclick="navToDetail()" style="cursor: pointer;">
                                <div class="titleb">
                                    <div class="title" name="title">[미해결] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.</div>
                                    <div class="contentbox">
                                        <div class="content" name="content">
                                                                학습하는 분들께 도움이 되고,
                                                                더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.
                                                                학습하는 분들께 도움이 되고,
                                                                더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.
                                        </div>
    
                                        <!-- 동그라미 답변 갯수 -->
                                        <div class="circle">
                                            <div class="replytitle">0</div>
                                            <div class="replycontent">답변</div>
                                        </div>
    
                                        <!-- 본문 속 해시태그 -->
                                        <div class="hashtagbox">
                                            <ul class="hashtag">
                                                <li class="hash" name="tag">#JAVA</li>
                                                <li class="hash" name="tag">#자바</li>
                                                <li class="hash" name="tag">#CSS</li>
                                            </ul>
                                        </div>
                                        <div class="etcbox">
                                            <ul class="etc">
                                                <li><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                                                <li name="writer">nick02</li>
                                                <li><i class="fa-regular fa-eye"></i> 56</li>
                                                <li><i class="fa-regular fa-comment"></i> 13</li>
                                                <li class="thumbsup"><i class="fa-solid fa-thumbs-up"></i> 26</li>
                                                <li>2022.12.09.</li>
                                            </ul>
                                        </div>
                                        <div class="line3"></div>
                                    </div>
    
                                </div>
                            </div>
    
                            <!-- 본문 리스트 -->
                            <c:forEach items="${qnaList}" var="list">
                                <div class="titlebox" onclick="navToDetail()" style="cursor: pointer;">
                                    <div class="titleb">
                                        <div class="title" name="title">${list.title}</div>
                                        <div class="contentbox">
                                            <div class="content" name="content">
                                                ${list.content}
                                            </div>
        
                                            <!-- 동그라미 답변 갯수 -->
                                            <div class="circle">
                                                <div class="replytitle">0</div>
                                                <div class="replycontent">답변</div>
                                            </div>
        
                                            <!-- 본문 속 해시태그 -->
                                            <div class="hashtagbox">
                                                <ul class="hashtag">
                                                    <li class="hash" name="tag">#JAVA</li>
                                                    <li class="hash" name="tag">#자바</li>
                                                    <li class="hash" name="tag">#CSS</li>
                                                </ul>
                                            </div>
                                            <div class="etcbox">
                                                <ul class="etc">
                                                    <li><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                                                    <li name="writer">${list.writer}</li>
                                                    <li><i class="fa-regular fa-eye"></i> ${list.hit}</li>
                                                    <li><i class="fa-regular fa-comment"></i> 13</li>
                                                    <li class="thumbsup"><i class="fa-solid fa-thumbs-up"></i> 26</li>
                                                    <li>${list.enrollDate}</li>
                                                </ul>
                                            </div>
                                            <div class="line3"></div>
                                        </div>
        
                                    </div>
                                </div>
                            </c:forEach>
    
                        </div>
                    </div>
                </div>
            </div>
        </form>

        
    </div>

    <div class="bottom"></div>

    <script>
        // 상단 카테고리 (전체 | 해결 | 미해결)
        $('.mainside .side-category').on("click",function(){
            $(".mainside .side-category.active").removeClass('active');
            $(this).addClass("active");
        });

        function navToDetail(){
            window.location.href="/app/qna/detail";
        }


        function login() {
        $(".blackBG").addClass("show");
        }

        const searchTag = document.querySelector(".study-search-tag");

        searchTag.addEventListener("keydown", function () {
        if (window.event.keyCode == 13) {
            makeTag(event);
        }

        if (window.event.keyCode == 8) {
            deleteBeforeTag();
        }
        });

        function makeTag(event) {
        const value = event.target.value;
        const str =
            '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
            '<input onclick="deleteTag2(event)" name="tag" type="text" readonly style="width:' +
            (value.length + 2) * 9 +
            "px" +
            ';" value="' +
            value +
            '" class="tag-btn cursor" /> ' +
            '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
            "</div>";

        const tagList = document.querySelector(".tag-list");
        tagList.innerHTML += str;

        event.target.value = "";
        }

        function resetTag() {
        const tagList = document.querySelector(".tag-list");
        tagList.textContent = "";
        form.submit();
        }

        function deleteTag(e) {
        e.target.remove();
        form.submit();
        }

        function deleteTag2(e) {
        e.target.parentNode.remove();
        form.submit();
        }

        function deleteBeforeTag() {
        const lastTag = document.querySelector(".tag-list div:last-child");
        lastTag.remove();
        form.submit();
        }
    </script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>