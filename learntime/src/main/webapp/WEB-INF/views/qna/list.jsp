<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .banner{
        width: 1920px;
        padding: 20px;
        height: 8vh;
        background-color: #333B3D;
    }
    .main{
        width: 1920px;
        float: left;
    }
    .bannertitle1{
        width: 70vw;
        margin-left: 335px;
        color: white;
        font-size: 30px;
        font-weight: 550;
    }
    .bannertitle2{
        width: 70vw;
        margin-top: 15px;
        margin-left: 335px;
        color: white;
        font-size: 18px;
        font-weight: 400;
    }
    .sidebar{
        width: 258px;
        height: 36vh;
        padding: 20px;
        margin-top: 225px;
        background-color: white;
        border: 1px solid #9D9D9D;
        border-radius: 10px;
        float: left;
        margin-left: 85px;
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
        font-size: 18px; 
        margin-bottom: 20px;
    }
    .sidenum{
        margin: 10px;
        font-size: 18px;
        vertical-align: top;
    }
    .mainbody{
        width: 1002px;
        height: 120vh;
        margin: 0 auto;
        margin-top: 20px;
    }
    .mainside{
        padding: 40px;
    }
    .cate1{
        margin-right: 20px;
        font-size: 20px;
        text-decoration: none;
        color: black;
        font-weight: 550;
    }
    .cate2{
        margin-right: 20px;
        font-size: 20px;
        color: gray;
        text-decoration: none;
    }
    .cate2:hover{
        color: black;
        font-weight: 550;
    }
    .cate3{
        margin-right: 20px;
        font-size: 20px;
        color: gray;
        text-decoration: none;
    }
    .cate3:hover{
        color: black;
        font-weight: 550;
    }
    .line1{
        width: 100%;
        border-top: 2px solid rgb(157, 157, 157);
        margin-top: 10px;
        
    }
    .sidetitle{
        font-size: 18px;
        font-weight: 550;
        margin: 0 auto;
        margin-bottom: 20px;
    }
    .search{
        margin-top: 20px;
        background: white;
        border: 1px solid #979797;
        border-radius: 10px;
        width: 36vw;
        height: 3vh;
        padding: 10px;
    }
    .searchbox{
        display: flex;
    }
    .searchbar{
        width: 35vw;
        border: none;
        font-size: 19px;
        margin-top: 5px;
        outline: none;
    }
    .searchbtn{
        width: 172px;
        height: 50px;
        text-decoration: none;
        font-size: 20px;
        background-color: #5ECC80;
        border-radius: 10px;
        color: white;
        border: none;
        margin-left: 740px;
    }
    .catelist{
        padding: 30px;
    }
    li{
        float: left;
        margin-right: 30px;
        margin-top: 27px;
    }
    .catelist1{
        text-decoration: none;
        color: black;
    }
    .catelist2{
        text-decoration: none;
        color: #979797;
    }
    .catelist2:hover{
        color: black;
    }
    .catelist3{
        text-decoration: none;
        color: #979797;
    }
    .catelist3:hover{
        color: black;
    }
    .catelist4{
        text-decoration: none;
        color: #979797;
    }
    .catelist4:hover{
        color: black;
    }
    .category{
        height: 9vh;
        width: 40vw;
    }
    .write{
        width: 172px;
        height: 50px;
        text-decoration: none;
        font-size: 20px;
        background-color: #D1F1DB;
        border-radius: 10px;
        color: rgb(81, 81, 81);
        border: none;
        margin-left: 725px;
    }
    .line2{
        border-top: 1px solid #B7B7B7;
    }
    .title{
        width: 700px;
        height: 5vh;
        font-size: 21px;
        font-weight: 550;
        padding: 20px;
        vertical-align: bottom;
    }
    .content{
        padding: 20px;
        font-size: 18px;
        color: #6F6F6F;
    }
    .hashtag{
        display: flex;
        margin-left: 20px;
    }
    .hash1{
        padding: 5px;
        width: 4vw;
        margin-right: 20px;
        border-radius: 20px;
        background-color: #AAAAAA;
        color: white;
        text-align: center;
    }
    .hash2{
        padding: 5px;
        width: 4vw;
        margin-right: 20px;
        border-radius: 20px;
        background-color: #AAAAAA;
        color: white;
        text-align: center;
    }
    .hash3{
        padding: 5px;
        width: 4vw;
        margin-right: 20px;
        border-radius: 20px;
        background-color: #AAAAAA;
        color: white;
        text-align: center;
    }
    .nick{
        font-size: 18px;
        margin-left: 20px;
        margin-top: 10px;
        margin-bottom: 20px;
        margin-right: 20px;
        float: left;
    }
    .eyeimg{
        display: flex;
        margin-top: 1px;
        float: left;
    }
    .eye{
        float: left;
        margin-top: 15px;
        margin-right: 20px;
    }
    .chatimg{
        display: flex;
        margin-top: 25px;
        float: left;
        margin-right: 5px;
    }
    .chat{
        float: left;
        margin-top: 14px;
        margin-right: 20px;
    }
    .enrollDate{
        float: left;
        margin-top: 15px;
        margin-right: 20px;
    }
    .line3{
        width: 100%;
        border-top: 2px solid #B7B7B7;
    }
    .fa-solid{
        margin-top: 16px;
        margin-right: 10px;
    }

</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="banner">
        <div class="bannertitle1">묻고 답해요</div>
        <div class="bannertitle2">미래 개발자들의 커뮤니티!! 함께 토론해보아요:)</div>
    </div>

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
                        <a href="#none" class="cate1">전체</a>
                        <a href="#none" class="cate2">해결</a>
                        <a href="#none" class="cate3">미해결</a>
                        <div class="line1"></div>

                        <div class="search">
                            <div class="searchbox">
                                <i class="fa-solid fa-magnifying-glass fa-lg"></i>
                                <input type="text" class="searchbar" name="searchbar" placeholder="궁금한 질문을 검색해보세요!">
                            </div>
                            <button class="searchbtn">검색</button>
                        </div>

                        <div class="category">
                            <ul class="catelist">
                                <li><a class="catelist1" href="none">º 최신순</a></li>
                                <li><a class="catelist2" href="none">º 정확도순</a></li>
                                <li><a class="catelist3" href="none">º 답변 많은순</a></li>
                                <li><a class="catelist4" href="none">º 좋아요순</a></li>
                                <button class="write" name="write">글쓰기✏️</button>
                            </ul>
                        </div>

                        <div class="maincon">
                            <div class="mainlist">
                                <table>
                                    <tr>
                                        <div class="line2"></div>
                                        <td class="title">[미해결] 연간관계의 메서드와 카테고리가 이해되지 않습니다.</td>
                                    </tr>
                                    <tr>
                                        <td class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.</td>
                                    </tr>
                                    <tr>
                                        <td class="hashtag">
                                            <div class="hash1">
                                                <div class="hash1-1">#JAVA</div>
                                            </div>
                                            <div class="hash2">
                                                <div>#자바</div>
                                            </div>
                                            <div class="hash3">
                                                <div>#CSS</div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="nick">nick01</td>
                                        <td class="eyeimg"><i class="fa-solid fa-eye"></i></td>
                                        <td class="eye">56</td>
                                        <td class="chatimg"><i class="fa-regular fa-comment fa-lg"></i></td>
                                        <td class="chat">12</td>
                                        <td class="enrollDate">2022.12.07.</td>
                                    </tr>
                                    <tr>
                                        <td><div class="line3"></div></td>
                                    </tr>
                                    
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <i class="fa-regular fa-comment"></i>
    <i class="fa-solid fa-heart"></i>
    <i class="fa-solid fa-heart-crack"></i>
    <i class="fa-solid fa-magnifying-glass"></i>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>