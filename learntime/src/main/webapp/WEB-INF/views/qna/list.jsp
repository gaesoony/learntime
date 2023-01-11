<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
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
        margin-top: 75px;
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
        width: 140px;
        margin-left: 10px;
        float: left; 
        font-size: 16px; 
        margin-bottom: 20px;
    }
    .sidenum{
        margin: 10px;
        font-size: 16px;
        vertical-align: middle;
        padding-bottom: 15px;
    }
    .mainbody{
        width: 1002px;
        margin: 0 auto;
        margin-top: 20px;
    }
    .mainside{
        padding: 40px;
    }
    .active{
        color: black;
        font-weight: 550;
    }
    .line1{
        width: 100%;
        border-top: 2px solid rgb(157, 157, 157);
        margin-top: -10px;
        
    }
    .sidetitle{
        font-size: 16px;
        font-weight: 550;
        margin: 0 auto;
        margin-bottom: 20px;
    }
    /* 카테고리 부분 */
    #category-box{
        display: grid;
        width: 820px;
        height: 45px;
        margin-left: 10px;
        grid-template-columns: 80px 80px 80px;
        font-size: 18px;
    }
    #cate-list a{
        color: #5ECC80;
        font-weight: 550;
    }
    
    /* 상단 리스트 타입 라디오 버튼 */
    .list-type-box{
        margin-bottom: 30px;
        margin-left: 10px;
        font-size: 18px;
        cursor: pointer;
        display: grid;
        grid-template-columns: 80px 80px 80px;
    }
    .list-type-box input[type=radio]{
        display: none;
    }
    #type-div{
        cursor: pointer;
    }

    /* 검색 부분 */
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
        cursor: pointer;
    }
    .catelist{
        margin-top: 30px;
        margin-bottom: 15px;
        margin-left: 15px;
        width: 65vw;
    }
    .cate{
        float: left;
        margin-right: 523px;
        display: flex;
        padding-top: 20px;
    }
    .type-list{
        cursor: pointer;
    }
    input[type="radio"]:checked + div{
        color: black;
        font-weight: 550;
    }
    input[type="radio"] + div{
        color: #6F6F6F;
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
        cursor: pointer;
    }
    .ca{
        display: none;
    }
    #order{
        cursor: pointer;
    }
    #order:hover{
        color: black;
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
        height: 60px;
        font-size: 14px;
        color: #6F6F6F;
        float: left;
        line-height: 20px;
        display: -webkit-box;
        word-wrap: break-word;
        -webkit-line-clamp:3;
        -webkit-box-orient:vertical;
        overflow:hidden;
        text-overflow:ellipsis;
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

    /* 검색 결과 없음 */
    .null-title{
        font-size: 18px;
        margin-top: 50px;
        margin-left: 620px;
        color: #666666;
    }

</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="banner">
        <div class="bannertitle1">묻고 답해요</div>
        <div class="bannertitle2">미래 개발자들의 커뮤니티!! 함께 토론해보아요:)</div>
    </div>

        <form action="${path}/qna/list" method="get" name="form">
            <div class="main">
                <div class="sidelist">
                    <div class="sidebar">
                        <div class="sidetitle"><img class="crown" src="/app/resources/img/qna/crown.png" alt="왕관"> 답변 채택 랭킹</div>
                        <table>
                            <c:forEach items="${answerLankList}" var="lank">
                                <tr>
                                    <td><img src="/app/${loginMember.imgName}" class="profile" alt="" onerror="this.src='/app/resources/img/profile_default.png'"></td>
                                    <td class="sideid">${lank.NICK}</td>
                                    <td class="sidenum">${lank.CNT}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="mainbody">
                        <div class="mainside">
                            <!-- 전체, 해결, 미해결 카테고리 -->
                            <div class="list-type-box">
                                <label onclick="form.submit();"><input type="radio" class="side-category" name="type" id="all" value="전체" checked/><div id="type-div">전체</div></label>
                                <label onclick="form.submit();"><input type="radio" class="side-category" name="type" id="skill" value="기술"/><div id="type-div">기술</div></label>
                                <label onclick="form.submit();"><input type="radio" class="side-category" name="type" id="career" value="커리어"/><div id="type-div">커리어</div></label>
                            </div>
                            
                            <div class="line1"></div>
    
                            <!-- 검색 -->
                            <div class="searchbar">
                                <div class="search">
                                    <c:if test="${keyword == null}">
                                        <i class="fa-solid fa-magnifying-glass fa-lg"></i>
                                        <input type="text" class="searchblank" name="keyword" placeholder="궁금한 질문을 검색해보세요!">
                                    </c:if>
                                    <c:if test="${keyword != null}">
                                        <i class="fa-solid fa-magnifying-glass fa-lg"></i>
                                        <input type="text" class="searchblank" name="keyword" placeholder="궁금한 질문을 검색해보세요!" value="${keyword}">
                                    </c:if>
                                </div>
                                <input type="submit" class="searchbtn" value="검색">
                            </div>
    
                            <!-- 카테고리 & 글쓰기 -->
                            <div class="category">
                                <div class="catelist">
                                    <ul class="cate">
                                        <li><label class="type-list" onclick="form.submit();"><input type="radio" class="ca" name="order" id="recent" value="recent" checked /><div>· 최신순&nbsp&nbsp</div></label></li>
                                        <li><label class="type-list" onclick="form.submit();"><input type="radio" class="ca" name="order" id="hit" value="hit" /><div>· 조회순&nbsp&nbsp</div></label></li>
                                        <li><label class="type-list" onclick="form.submit();"><input type="radio" class="ca" name="order" id="reply" value="reply" /><div>· 답변순&nbsp&nbsp</div></label></li>
                                        <li><label class="type-list" onclick="form.submit();"><input type="radio" class="ca" name="order" id="recommend" value="recommend" /><div>· 좋아요순</div></label></li>
                                    </ul>
                                    <c:if test="${loginMember != null}">
                                        <input type="button" onclick="location.href='${path}/qna/write'" class="writebtn" value="글쓰기✏️">
                                    </c:if>
                                    <c:if test="${loginMember == null}">
                                        <input type="button" onclick="login();" class="writebtn" value="글쓰기✏️">
                                    </c:if>
                                </div>
                                <div class="line2"></div>
                            </div>

    
                            <!-- 본문 리스트 -->
                            <c:forEach items="${qnaList}" var="map">
                                <a href="${path}/qna/detail?qno=${map.NO}&keyword=${keyword}&type=${type}&order=${order}">
                                    <div class="titlebox">
                                        <div class="titleb">
                                            <div class="title" name="title">[${map.CATE_NO}]&nbsp${map.TITLE}</div>
                                            <div class="contentbox">
                                                <div class="content" name="content">
                                                    ${map.CONTENT}
                                                </div>
            
                                                <!-- 동그라미 답변 갯수 -->
                                                <div class="circle">
                                                    <div class="replytitle">${map.REPLY_CNT}</div>
                                                    <div class="replycontent">답변</div>
                                                </div>

                                                <div class="etcbox">
                                                    <ul class="etc">
                                                        <li><img src="/app/${loginMember.imgName}" class="profile2" alt="" onerror="this.src='/app/resources/img/profile_default.png'"></li>
                                                        <li name="writer">${map.WRITER}</li>
                                                        <li><i class="fa-regular fa-eye"></i>&nbsp ${map.HIT}</li>
                                                        <li><i class="fa-regular fa-comment"></i>&nbsp ${map.REPLY_CNT}</li>
                                                        <li class="thumbsup"><i class="fa-solid fa-thumbs-up"></i>&nbsp ${map.LIKES}</li>
                                                        <li>${map.ENROLL_DATE}</li>
                                                    </ul>
                                                </div>
                                                <div class="line3"></div>
                                            </div>
            
                                        </div>
                                    </div>
                                </a>
                                
                            </c:forEach>
    
                        </div>
                    </div>
                </div>
                <c:if test="${qnaList.size() == 0}">
                    <div class="null-title">"검색된 결과가 없습니다🤔"</div>
                </c:if>
            </div>
        </form>

        
    </div>

    <div class="bottom"></div>

    <script>

        //글쓰기 버튼 클릭 시, 로그인창
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