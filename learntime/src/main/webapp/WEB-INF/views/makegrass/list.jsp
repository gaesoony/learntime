<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .bannerbox{
        height: 42vh;
        background-color: #5ECC80;
        position: relative;
    }
    .banner{
        position: absolute;
        width: 64%;
        height: 87%;
        background-color: white;
        border-radius: 20px;
        margin-left: 355px;
        margin-top: 23px;
    }
    .monthbox{
        width: 100%;
        margin-top: 15px;
        display: flex;
        margin-left: 90px;
    }
    .month{
        margin-right: 70px;
        font-size: 17px;
    }
    .daybox{
        width: 3vw;
        margin-left: 25px;
        margin-top: 25px;
        float: left;
    }
    .day{
        margin-bottom: 21.5px;
    }
    .grassbox1{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass1{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox2{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass2{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox3{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass3{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox4{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass4{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox5{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass5{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox6{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass6{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox7{
        display: flex;
        margin-top: 20px;
        margin-right: 10px;
    }
    .grass7{
        width: 30px;
        height: 18px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .listtitle{
        width: 996px;
        margin: 0 auto;
        font-size: 27px;
        margin-top: 70px;
    }
    .userbox{
        margin-bottom: 5px;
    }
    .leftside{
        width: 250px;
        height: 370px;
        border-radius: 10px;
        border: 1px solid #9D9D9D;
        background-color: white;
        margin-left: 70px;
        margin-top: 80px;
    }
    .leftsidebox{
        float: left;
    }
    .leftsidetitle{
        margin-left: 15px;
        margin-top: 15px;
        margin-bottom: 17px;
    }
    .crown{
        font-size: 18px;
    }
    .crownimg{
        width: 30px;
        margin-right: 10px;
    }
    .profile{
        width: 25px;
        margin-left: 17px;
        margin-top: 15px;
        margin-right: 10px;
        float: left;
    }
    .user{
        width: 2.5vw;
        font-size: 18px;
        margin-right: 5px;
    }
    .usernick{
        margin-top: 20px;
        margin-right: 110px;
        float: left;
    }
    .usernum{
        width: 2vw;
        margin-left: 215px;
        padding-top: 20px;
    }
    .mainbox{
        border: 1px solid black;
        width: 996px;
        margin: 0 auto;
        margin-top: 80px;
    }
    .mainlist{
        width: 300px;
        height: 400px;
        border: 2px solid #5ECC80;
        border-radius: 20px;
        background-color: white;
    }
    .thumbnail{
        width: 250px;
        height: 110px;
        background-color: #5ECC80;
        margin: 0 auto;
        margin-top: 20px;
    }
    .clockimg{
        margin-left: 25px;
        margin-top: 10px;
        font-size: 20px;
    }
    .bookimg{
        font-size: 20px;
        margin-left: 25px;
        margin-top: 20px;
    }
    .content{
        width: 13vw;
        height: 12vh;
        font-size: 17px;
        margin-left: 25px;
        margin-top: 10px;
    }
    .contentline{
        width: 90%;
        margin: 0 auto;
        margin-top: 20px;
        border-top: 2px solid #5ECC80;
    }
    .userprofile2{
        margin-left: 23px;
        margin-top: 10px;
        float: left;
    }
    .profile2{
        width: 30px;
    }
    .usernick{
        margin-left: 5px;
        margin-top: 15px;
    }
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="bannerbox">
        <div class="banner">
            <ul class="monthbox">
                <li class="month">1월</li>
                <li class="month">2월</li>
                <li class="month">3월</li>
                <li class="month">4월</li>
                <li class="month">5월</li>
                <li class="month">6월</li>
                <li class="month">7월</li>
                <li class="month">8월</li>
                <li class="month">9월</li>
                <li class="month">10월</li>
                <li class="month">11월</li>
                <li class="month">12월</li>
            </ul>
            <ul class="daybox">
                <li class="day">MON</li>
                <li class="day">TUE</li>
                <li class="day">WED</li>
                <li class="day">THU</li>
                <li class="day">FRI</li>
                <li class="day">SAT</li>
                <li class="day">SUN</li>
            </ul>

            <!-- 잔디 -->
            <div class="grassbox">
                <ul class="grassbox1">
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                    <li class="grass1"></li>
                </ul>
                <ul class="grassbox2">
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                    <li class="grass2"></li>
                </ul>
                <ul class="grassbox3">
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                    <li class="grass3"></li>
                </ul>
                <ul class="grassbox4">
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                    <li class="grass4"></li>
                </ul>
                <ul class="grassbox5">
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                    <li class="grass5"></li>
                </ul>
                <ul class="grassbox6">
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                    <li class="grass6"></li>
                </ul>
                <ul class="grassbox7">
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                    <li class="grass7"></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="listtitle">공부인증 게시판</div>

    <!-- 메인 리스트 부분 -->
    <div class="leftsidebox">
        <div class="leftside">

            <!-- 랭킹 타이틀 -->
            <ul class="leftsidetitle">
                <li class="crown"><img class="crownimg" src="/app/resources/img/qna/crown.png" alt="왕관">공부 인증 랭킹</li>
            </ul>

            <!-- user 랭킹 순위 -->
            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>
            
        </div> 
    </div>

    <div class="mainbox">
        <div class="mainlist">
            <div class="thumbnail"></div>
            <div class="clockimg"><i class="fa-regular fa-clock"></i> 120분</div>
            <div class="bookimg"><i class="fa-solid fa-book"></i></div>
            <div class="content">
                백앤드로 JAVA Script와 화면
                구현을 위한 CSS, 추가로 AJAX에
                대한 부분도 함께 공부함.
                백앤드로 JAVA Script와 화면.
            </div>
            <div class="contentline"></div>
            <div class="info">
                <ul>
                    <li class="userprofile2"><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick01</li>

                </ul>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>