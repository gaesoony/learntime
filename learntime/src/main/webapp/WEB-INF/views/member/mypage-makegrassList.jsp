<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 공통부분 */
    #all-area{
        width: 100%;
        height: 100%;
        margin: auto;
    }

    #mypage-box{
        width: 1200px;
        height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

   #home-area{
        padding: 40px;  
        height: auto;
        margin-top: 20px;

        display: grid;
        grid-template-rows: 45px;
   }
   .main-color {
        color: #5ecc80;
    }

    /* 카테고리 부분 */
    #category-box{
        display: grid;
        width: 820px;
        height: 45px;
        grid-template-columns: 270px 270px 270px;
        place-items: center;
    }
    #cate-list a{
        color: #5ecc80;
        font-weight: 550;
    }
    #category-line{
        width: 820px;
        height: 2px;
        margin: 0 auto;
        border-top: 1.5px solid #a2a2a2;
    }
    #title-box{
        width: 100%;
        height: auto;
        margin-top: 10px;
    }

    /* 잔디심기 부분 */
    .banner{
        border: 2px solid #5ecc80;
        width: 800px;
        height: 26vh;
        border-radius: 20px;
        margin: 0 auto;
    }
    .monthbox{
        width: 800px;
        margin-top: 10px;
        display: flex;
        margin-left: 73px;
    }
    .month{
        font-size: 10px;
        margin-right: 45px;
    }
    .daybox{
        width: 3vw;
        margin-left: 15px;
        margin-top: 10px;
        float: left;
    }
    .day{
        margin-bottom: 12px;
        font-size: 10px;
    }
    .grassbox1{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass1{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox2{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass2{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox3{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass3{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox4{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass4{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox5{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass5{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox6{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass6{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox7{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass7{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }

    /* 잔디 상태 */
    #makegrass-status-box{
        width: 120px;
        height: 20px;
        margin-top: 5px;
        margin-left: 680px;
        display: flex;
    }
    #status{
        font-size: 13px;
        margin-right: 5px;
    }
    #box1{
        width: 13px;
        height: 11px;
        background-color: #AEDDBD;
        margin-right: 5px;
        margin-top: 2px;
    }
    #box2{
        width: 13px;
        height: 11px;
        background-color: #72DA92;
        margin-right: 5px;
        margin-top: 2px;
    }
    #box3{
        width: 13px;
        height: 11px;
        background-color: #3CB160;
        margin-right: 5px;
        margin-top: 2px;
    }

    /* 리스트 부분 */
    .mainbox{
        width: 800px;
        margin-top: 50px;
        display: grid;
        grid-template-columns: 270px 270px 270px;
        row-gap: 20px;
        justify-content: center;
    }
    .mainlist{
        width: 220px;
        height: 300px;
        border: 2px solid #5ECC80;
        border-radius: 20px;
        margin: 0 auto;
        cursor: pointer;
    }
    .title{
        width: 200px;
        height: 90px;
        margin: 0 auto;
        margin-top: 15px;
        font-size: 14px;
        font-weight: 550;
    }
    .clockimg{
        margin-left: 10px;
        margin-top: 10px;
        font-size: 14px;
    }
    .bookimg{
        font-size: 15px;
        margin-left: 13px;
        margin-top: 10px;
    }
    .content{
        width: 200px;
        height: 88px;
        font-size: 12px;
        margin-left: 13px;
        margin-top: 5px;
        line-height: 17px;
        display: -webkit-box;
        word-wrap: break-word;
        -webkit-line-clamp: 5;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .contentline{
        width: 90%;
        margin: 0 auto;
        border-top: 2px solid #5ECC80;
    }
    .contentDate{
        margin-left: 15px;
        color: #868686;
        font-size: 12px;
        margin-top: 10px;
    }

</style>
</head>
<body>

    <%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="all-area">
        <div id="mypage-box">
            <div id="mypage">
                <div id="bin">
                    <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
                </div>
                <div id="home-area">
                    <!-- 카테고리 -->
                    <div id="category-box">
                        <div id="cate-list">
                            <a href="/app/member/mypage/makegrassList">My 잔디심기</a>
                        </div>
                        <div>
                            <a href="/app/member/mypage/makegrassScrap">My 스크랩</a>
                        </div>
                        <div>
                            <a href="/app/member/mypage/makegrassReply">My 댓글</a>
                        </div>
                        <!-- 카테고리 라인 -->
                        <div id="category-line"></div>
                    </div>
                    

                    <div id="title-box">

                        <!-- 잔디심기 부분 -->
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
                                    <li class="day">SAT</li>
                                    <li class="day">SUN</li>
                                    <li class="day">MON</li>
                                    <li class="day">TUE</li>
                                    <li class="day">WED</li>
                                    <li class="day">THU</li>
                                    <li class="day">FRI</li>
                                </ul>
                    
                                <!-- 잔디 -->
                                <div class="grassbox">
                                    <ul class="grassbox1">
                                        <li class="grass1" title="23년 1월 1일"></li>
                                        <li class="grass1" title="23년 1월 8일"></li>
                                        <li class="grass1" title="23년 1월 15일"></li>
                                        <li class="grass1" title="23년 1월 22일"></li>
                                        <li class="grass1" title="23년 1월 29일"></li>
                                        <li class="grass1" title="23년 2월 5일"></li>
                                        <li class="grass1" title="23년 2월 12일"></li>
                                        <li class="grass1" title="23년 2월 19일"></li>
                                        <li class="grass1" title="23년 2월 26일"></li>
                                        <li class="grass1" title="23년 3월 5일"></li>
                                        <li class="grass1" title="23년 3월 12일"></li>
                                        <li class="grass1" title="23년 3월 19일"></li>
                                        <li class="grass1" title="23년 3월 26일"></li>
                                        <li class="grass1" title="23년 4월 2일"></li>
                                        <li class="grass1" title="23년 4월 9일"></li>
                                        <li class="grass1" title="23년 4월 16일"></li>
                                        <li class="grass1" title="23년 4월 23일"></li>
                                        <li class="grass1" title="23년 4월 30일"></li>
                                        <li class="grass1" title="23년 5월 7일"></li>
                                        <li class="grass1" title="23년 5월 14일"></li>
                                        <li class="grass1" title="23년 5월 21일"></li>
                                        <li class="grass1" title="23년 5월 28일"></li>
                                        <li class="grass1" title="23년 6월 4일"></li>
                                        <li class="grass1" title="23년 6월 11일"></li>
                                        <li class="grass1" title="23년 6월 18일"></li>
                                        <li class="grass1" title="23년 6월 25일"></li>
                                        <li class="grass1" title="23년 7월 2일"></li>
                                        <li class="grass1" title="23년 7월 9일"></li>
                                        <li class="grass1" title="23년 7월 16일"></li>
                                        <li class="grass1" title="23년 7월 23일"></li>
                                        <li class="grass1" title="23년 7월 30일"></li>
                                        <li class="grass1" title="23년 8월 6일"></li>
                                        <li class="grass1" title="23년 8월 13일"></li>
                                        <li class="grass1" title="23년 8월 20일"></li>
                                        <li class="grass1" title="23년 8월 27일"></li>
                                        <li class="grass1" title="23년 9월 3일"></li>
                                        <li class="grass1" title="23년 9월 10일"></li>
                                        <li class="grass1" title="23년 9월 17일"></li>
                                        <li class="grass1" title="23년 9월 24일"></li>
                                        <li class="grass1" title="23년 10월 1일"></li>
                                        <li class="grass1" title="23년 10월 8일"></li>
                                        <li class="grass1" title="23년 10월 15일"></li>
                                        <li class="grass1" title="23년 10월 22일"></li>
                                        <li class="grass1" title="23년 10월 29일"></li>
                                        <li class="grass1" title="23년 11월 5일"></li>
                                        <li class="grass1" title="23년 11월 12일"></li>
                                        <li class="grass1" title="23년 11월 19일"></li>
                                        <li class="grass1" title="23년 11월 26일"></li>
                                        <li class="grass1" title="23년 12월 3일"></li>
                                        <li class="grass1" title="23년 12월 10일"></li>
                                        <li class="grass1" title="23년 12월 17일"></li>
                                        <li class="grass1" title="23년 12월 24일"></li>
                                        <li class="grass1" title="23년 12월 31일"></li>
                                    </ul>
                                    <ul class="grassbox2">
                                        <li class="grass2" title="23년 1월 2일"></li>
                                        <li class="grass2" title="23년 1월 9일"></li>
                                        <li class="grass2" title="23년 1월 16일"></li>
                                        <li class="grass2" title="23년 1월 23일"></li>
                                        <li class="grass2" title="23년 1월 30일"></li>
                                        <li class="grass2" title="23년 2월 6일"></li>
                                        <li class="grass2" title="23년 2월 13일"></li>
                                        <li class="grass2" title="23년 2월 20일"></li>
                                        <li class="grass2" title="23년 2월 27일"></li>
                                        <li class="grass2" title="23년 3월 6일"></li>
                                        <li class="grass2" title="23년 3월 13일"></li>
                                        <li class="grass2" title="23년 3월 20일"></li>
                                        <li class="grass2" title="23년 3월 27일"></li>
                                        <li class="grass2" title="23년 4월 3일"></li>
                                        <li class="grass2" title="23년 4월 10일"></li>
                                        <li class="grass2" title="23년 4월 17일"></li>
                                        <li class="grass2" title="23년 4월 24일"></li>
                                        <li class="grass2" title="23년 5월 1일"></li>
                                        <li class="grass2" title="23년 5월 8일"></li>
                                        <li class="grass2" title="23년 5월 15일"></li>
                                        <li class="grass2" title="23년 5월 22일"></li>
                                        <li class="grass2" title="23년 5월 29일"></li>
                                        <li class="grass2" title="23년 6월 5일"></li>
                                        <li class="grass2" title="23년 6월 12일"></li>
                                        <li class="grass2" title="23년 6월 19일"></li>
                                        <li class="grass2" title="23년 6월 26일"></li>
                                        <li class="grass2" title="23년 7월 3일"></li>
                                        <li class="grass2" title="23년 7월 10일"></li>
                                        <li class="grass2" title="23년 7월 17일"></li>
                                        <li class="grass2" title="23년 7월 24일"></li>
                                        <li class="grass2" title="23년 7월 31일"></li>
                                        <li class="grass2" title="23년 8월 7일"></li>
                                        <li class="grass2" title="23년 8월 14일"></li>
                                        <li class="grass2" title="23년 8월 21일"></li>
                                        <li class="grass2" title="23년 8월 28일"></li>
                                        <li class="grass2" title="23년 9월 4일"></li>
                                        <li class="grass2" title="23년 9월 11일"></li>
                                        <li class="grass2" title="23년 9월 18일"></li>
                                        <li class="grass2" title="23년 9월 25일"></li>
                                        <li class="grass2" title="23년 10월 2일"></li>
                                        <li class="grass2" title="23년 10월 9일"></li>
                                        <li class="grass2" title="23년 10월 16일"></li>
                                        <li class="grass2" title="23년 10월 23일"></li>
                                        <li class="grass2" title="23년 10월 30일"></li>
                                        <li class="grass2" title="23년 11월 6일"></li>
                                        <li class="grass2" title="23년 11월 13일"></li>
                                        <li class="grass2" title="23년 11월 20일"></li>
                                        <li class="grass2" title="23년 11월 27일"></li>
                                        <li class="grass2" title="23년 12월 4일"></li>
                                        <li class="grass2" title="23년 12월 11일"></li>
                                        <li class="grass2" title="23년 12월 18일"></li>
                                        <li class="grass2" title="23년 12월 25일"></li>
                                    </ul>
                                    <ul class="grassbox3">
                                        <li class="grass3" title="23년 1월 3일"></li>
                                        <li class="grass3" title="23년 1월 10일"></li>
                                        <li class="grass3" title="23년 1월 17일"></li>
                                        <li class="grass3" title="23년 1월 24일"></li>
                                        <li class="grass3" title="23년 1월 31일"></li>
                                        <li class="grass3" title="23년 2월 7일"></li>
                                        <li class="grass3" title="23년 2월 14일"></li>
                                        <li class="grass3" title="23년 2월 21일"></li>
                                        <li class="grass3" title="23년 2월 28일"></li>
                                        <li class="grass3" title="23년 3월 7일"></li>
                                        <li class="grass3" title="23년 3월 14일"></li>
                                        <li class="grass3" title="23년 3월 21일"></li>
                                        <li class="grass3" title="23년 3월 28일"></li>
                                        <li class="grass3" title="23년 4월 4일"></li>
                                        <li class="grass3" title="23년 4월 11일"></li>
                                        <li class="grass3" title="23년 4월 18일"></li>
                                        <li class="grass3" title="23년 4월 25일"></li>
                                        <li class="grass3" title="23년 5월 2일"></li>
                                        <li class="grass3" title="23년 5월 9일"></li>
                                        <li class="grass3" title="23년 5월 16일"></li>
                                        <li class="grass3" title="23년 5월 23일"></li>
                                        <li class="grass3" title="23년 5월 30일"></li>
                                        <li class="grass3" title="23년 6월 6일"></li>
                                        <li class="grass3" title="23년 6월 13일"></li>
                                        <li class="grass3" title="23년 6월 20일"></li>
                                        <li class="grass3" title="23년 6월 27일"></li>
                                        <li class="grass3" title="23년 7월 4일"></li>
                                        <li class="grass3" title="23년 7월 11일"></li>
                                        <li class="grass3" title="23년 7월 18일"></li>
                                        <li class="grass3" title="23년 7월 25일"></li>
                                        <li class="grass3" title="23년 8월 1일"></li>
                                        <li class="grass3" title="23년 8월 8일"></li>
                                        <li class="grass3" title="23년 8월 15일"></li>
                                        <li class="grass3" title="23년 8월 22일"></li>
                                        <li class="grass3" title="23년 8월 29일"></li>
                                        <li class="grass3" title="23년 9월 5일"></li>
                                        <li class="grass3" title="23년 9월 12일"></li>
                                        <li class="grass3" title="23년 9월 19일"></li>
                                        <li class="grass3" title="23년 9월 26일"></li>
                                        <li class="grass3" title="23년 10월 3일"></li>
                                        <li class="grass3" title="23년 10월 10일"></li>
                                        <li class="grass3" title="23년 10월 17일"></li>
                                        <li class="grass3" title="23년 10월 24일"></li>
                                        <li class="grass3" title="23년 10월 31일"></li>
                                        <li class="grass3" title="23년 11월 7일"></li>
                                        <li class="grass3" title="23년 11월 14일"></li>
                                        <li class="grass3" title="23년 11월 21일"></li>
                                        <li class="grass3" title="23년 11월 28일"></li>
                                        <li class="grass3" title="23년 12월 5일"></li>
                                        <li class="grass3" title="23년 12월 12일"></li>
                                        <li class="grass3" title="23년 12월 19일"></li>
                                        <li class="grass3" title="23년 12월 26일"></li>
                                    </ul>
                                    <ul class="grassbox4">
                                        <li class="grass4" title="23년 1월 4일"></li>
                                        <li class="grass4" title="23년 1월 11일"></li>
                                        <li class="grass4" title="23년 1월 18일"></li>
                                        <li class="grass4" title="23년 1월 25일"></li>
                                        <li class="grass4" title="23년 2월 1일"></li>
                                        <li class="grass4" title="23년 2월 8일"></li>
                                        <li class="grass4" title="23년 2월 15일"></li>
                                        <li class="grass4" title="23년 2월 22일"></li>
                                        <li class="grass4" title="23년 3월 1일"></li>
                                        <li class="grass4" title="23년 3월 8일"></li>
                                        <li class="grass4" title="23년 3월 15일"></li>
                                        <li class="grass4" title="23년 3월 22일"></li>
                                        <li class="grass4" title="23년 3월 29일"></li>
                                        <li class="grass4" title="23년 4월 5일"></li>
                                        <li class="grass4" title="23년 4월 12일"></li>
                                        <li class="grass4" title="23년 4월 19일"></li>
                                        <li class="grass4" title="23년 4월 26일"></li>
                                        <li class="grass4" title="23년 5월 3일"></li>
                                        <li class="grass4" title="23년 5월 10일"></li>
                                        <li class="grass4" title="23년 5월 17일"></li>
                                        <li class="grass4" title="23년 5월 24일"></li>
                                        <li class="grass4" title="23년 5월 31일"></li>
                                        <li class="grass4" title="23년 6월 7일"></li>
                                        <li class="grass4" title="23년 6월 14일"></li>
                                        <li class="grass4" title="23년 6월 21일"></li>
                                        <li class="grass4" title="23년 6월 28일"></li>
                                        <li class="grass4" title="23년 7월 5일"></li>
                                        <li class="grass4" title="23년 7월 12일"></li>
                                        <li class="grass4" title="23년 7월 19일"></li>
                                        <li class="grass4" title="23년 7월 26일"></li>
                                        <li class="grass4" title="23년 8월 2일"></li>
                                        <li class="grass4" title="23년 8월 9일"></li>
                                        <li class="grass4" title="23년 8월 16일"></li>
                                        <li class="grass4" title="23년 8월 23일"></li>
                                        <li class="grass4" title="23년 8월 30일"></li>
                                        <li class="grass4" title="23년 9월 6일"></li>
                                        <li class="grass4" title="23년 9월 13일"></li>
                                        <li class="grass4" title="23년 9월 20일"></li>
                                        <li class="grass4" title="23년 9월 27일"></li>
                                        <li class="grass4" title="23년 10월 4일"></li>
                                        <li class="grass4" title="23년 10월 11일"></li>
                                        <li class="grass4" title="23년 10월 18일"></li>
                                        <li class="grass4" title="23년 10월 25일"></li>
                                        <li class="grass4" title="23년 11월 1일"></li>
                                        <li class="grass4" title="23년 11월 8일"></li>
                                        <li class="grass4" title="23년 11월 15일"></li>
                                        <li class="grass4" title="23년 11월 22일"></li>
                                        <li class="grass4" title="23년 11월 29일"></li>
                                        <li class="grass4" title="23년 12월 6일"></li>
                                        <li class="grass4" title="23년 12월 13일"></li>
                                        <li class="grass4" title="23년 12월 20일"></li>
                                        <li class="grass4" title="23년 12월 27일"></li>
                                    </ul>
                                    <ul class="grassbox5">
                                        <li class="grass5" title="23년 1월 5일"></li>
                                        <li class="grass5" title="23년 1월 12일"></li>
                                        <li class="grass5" title="23년 1월 19일"></li>
                                        <li class="grass5" title="23년 1월 26일"></li>
                                        <li class="grass5" title="23년 2월 2일"></li>
                                        <li class="grass5" title="23년 2월 9일"></li>
                                        <li class="grass5" title="23년 2월 16일"></li>
                                        <li class="grass5" title="23년 2월 23일"></li>
                                        <li class="grass5" title="23년 3월 2일"></li>
                                        <li class="grass5" title="23년 3월 9일"></li>
                                        <li class="grass5" title="23년 3월 16일"></li>
                                        <li class="grass5" title="23년 3월 23일"></li>
                                        <li class="grass5" title="23년 3월 30일"></li>
                                        <li class="grass5" title="23년 4월 6일"></li>
                                        <li class="grass5" title="23년 4월 13일"></li>
                                        <li class="grass5" title="23년 4월 20일"></li>
                                        <li class="grass5" title="23년 4월 27일"></li>
                                        <li class="grass5" title="23년 5월 4일"></li>
                                        <li class="grass5" title="23년 5월 11일"></li>
                                        <li class="grass5" title="23년 5월 18일"></li>
                                        <li class="grass5" title="23년 5월 25일"></li>
                                        <li class="grass5" title="23년 6월 1일"></li>
                                        <li class="grass5" title="23년 6월 8일"></li>
                                        <li class="grass5" title="23년 6월 15일"></li>
                                        <li class="grass5" title="23년 6월 22일"></li>
                                        <li class="grass5" title="23년 6월 29일"></li>
                                        <li class="grass5" title="23년 7월 6일"></li>
                                        <li class="grass5" title="23년 7월 13일"></li>
                                        <li class="grass5" title="23년 7월 20일"></li>
                                        <li class="grass5" title="23년 7월 27일"></li>
                                        <li class="grass5" title="23년 8월 3일"></li>
                                        <li class="grass5" title="23년 8월 10일"></li>
                                        <li class="grass5" title="23년 8월 17일"></li>
                                        <li class="grass5" title="23년 8월 24일"></li>
                                        <li class="grass5" title="23년 8월 31일"></li>
                                        <li class="grass5" title="23년 9월 7일"></li>
                                        <li class="grass5" title="23년 9월 14일"></li>
                                        <li class="grass5" title="23년 9월 21일"></li>
                                        <li class="grass5" title="23년 9월 28일"></li>
                                        <li class="grass5" title="23년 10월 5일"></li>
                                        <li class="grass5" title="23년 10월 12일"></li>
                                        <li class="grass5" title="23년 10월 19일"></li>
                                        <li class="grass5" title="23년 10월 26일"></li>
                                        <li class="grass5" title="23년 11월 2일"></li>
                                        <li class="grass5" title="23년 11월 9일"></li>
                                        <li class="grass5" title="23년 11월 16일"></li>
                                        <li class="grass5" title="23년 11월 23일"></li>
                                        <li class="grass5" title="23년 11월 30일"></li>
                                        <li class="grass5" title="23년 12월 7일"></li>
                                        <li class="grass5" title="23년 12월 14일"></li>
                                        <li class="grass5" title="23년 12월 21일"></li>
                                        <li class="grass5" title="23년 12월 28일"></li>
                                    </ul>
                                    <ul class="grassbox6">
                                        <li class="grass6" title="23년 1월 6일"></li>
                                        <li class="grass6" title="23년 1월 13일"></li>
                                        <li class="grass6" title="23년 1월 20일"></li>
                                        <li class="grass6" title="23년 1월 27일"></li>
                                        <li class="grass6" title="23년 2월 3일"></li>
                                        <li class="grass6" title="23년 2월 10일"></li>
                                        <li class="grass6" title="23년 2월 17일"></li>
                                        <li class="grass6" title="23년 2월 24일"></li>
                                        <li class="grass6" title="23년 3월 3일"></li>
                                        <li class="grass6" title="23년 3월 10일"></li>
                                        <li class="grass6" title="23년 3월 17일"></li>
                                        <li class="grass6" title="23년 3월 24일"></li>
                                        <li class="grass6" title="23년 3월 31일"></li>
                                        <li class="grass6" title="23년 4월 7일"></li>
                                        <li class="grass6" title="23년 4월 14일"></li>
                                        <li class="grass6" title="23년 4월 21일"></li>
                                        <li class="grass6" title="23년 4월 29일"></li>
                                        <li class="grass6" title="23년 5월 5일"></li>
                                        <li class="grass6" title="23년 5월 12일"></li>
                                        <li class="grass6" title="23년 5월 19일"></li>
                                        <li class="grass6" title="23년 5월 26일"></li>
                                        <li class="grass6" title="23년 6월 2일"></li>
                                        <li class="grass6" title="23년 6월 9일"></li>
                                        <li class="grass6" title="23년 6월 16일"></li>
                                        <li class="grass6" title="23년 6월 23일"></li>
                                        <li class="grass6" title="23년 6월 30일"></li>
                                        <li class="grass6" title="23년 7월 7일"></li>
                                        <li class="grass6" title="23년 7월 14일"></li>
                                        <li class="grass6" title="23년 7월 21일"></li>
                                        <li class="grass6" title="23년 7월 28일"></li>
                                        <li class="grass6" title="23년 8월 4일"></li>
                                        <li class="grass6" title="23년 8월 11일"></li>
                                        <li class="grass6" title="23년 8월 18일"></li>
                                        <li class="grass6" title="23년 8월 25일"></li>
                                        <li class="grass6" title="23년 9월 1일"></li>
                                        <li class="grass6" title="23년 9월 8일"></li>
                                        <li class="grass6" title="23년 9월 15일"></li>
                                        <li class="grass6" title="23년 9월 22일"></li>
                                        <li class="grass6" title="23년 9월 29일"></li>
                                        <li class="grass6" title="23년 10월 6일"></li>
                                        <li class="grass6" title="23년 10월 13일"></li>
                                        <li class="grass6" title="23년 10월 20일"></li>
                                        <li class="grass6" title="23년 10월 27일"></li>
                                        <li class="grass6" title="23년 11월 3일"></li>
                                        <li class="grass6" title="23년 11월 10일"></li>
                                        <li class="grass6" title="23년 11월 17일"></li>
                                        <li class="grass6" title="23년 11월 24일"></li>
                                        <li class="grass6" title="23년 12월 1일"></li>
                                        <li class="grass6" title="23년 12월 8일"></li>
                                        <li class="grass6" title="23년 12월 15일"></li>
                                        <li class="grass6" title="23년 12월 22일"></li>
                                        <li class="grass6" title="23년 12월 29일"></li>
                                    </ul>
                                    <ul class="grassbox7">
                                        <li class="grass7" title="23년 1월 7일"></li>
                                        <li class="grass7" title="23년 1월 14일"></li>
                                        <li class="grass7" title="23년 1월 21일"></li>
                                        <li class="grass7" title="23년 1월 28일"></li>
                                        <li class="grass7" title="23년 2월 4일"></li>
                                        <li class="grass7" title="23년 2월 11일"></li>
                                        <li class="grass7" title="23년 2월 18일"></li>
                                        <li class="grass7" title="23년 2월 25일"></li>
                                        <li class="grass7" title="23년 3월 4일"></li>
                                        <li class="grass7" title="23년 3월 11일"></li>
                                        <li class="grass7" title="23년 3월 18일"></li>
                                        <li class="grass7" title="23년 3월 25일"></li>
                                        <li class="grass7" title="23년 4월 1일"></li>
                                        <li class="grass7" title="23년 4월 8일"></li>
                                        <li class="grass7" title="23년 4월 15일"></li>
                                        <li class="grass7" title="23년 4월 22일"></li>
                                        <li class="grass7" title="23년 4월 29일"></li>
                                        <li class="grass7" title="23년 5월 6일"></li>
                                        <li class="grass7" title="23년 5월 13일"></li>
                                        <li class="grass7" title="23년 5월 20일"></li>
                                        <li class="grass7" title="23년 5월 27일"></li>
                                        <li class="grass7" title="23년 6월 3일"></li>
                                        <li class="grass7" title="23년 6월 10일"></li>
                                        <li class="grass7" title="23년 6월 17일"></li>
                                        <li class="grass7" title="23년 6월 24일"></li>
                                        <li class="grass7" title="23년 7월 1일"></li>
                                        <li class="grass7" title="23년 7월 8일"></li>
                                        <li class="grass7" title="23년 7월 15일"></li>
                                        <li class="grass7" title="23년 7월 22일"></li>
                                        <li class="grass7" title="23년 7월 29일"></li>
                                        <li class="grass7" title="23년 8월 5일"></li>
                                        <li class="grass7" title="23년 8월 12일"></li>
                                        <li class="grass7" title="23년 8월 19일"></li>
                                        <li class="grass7" title="23년 8월 26일"></li>
                                        <li class="grass7" title="23년 9월 2일"></li>
                                        <li class="grass7" title="23년 9월 9일"></li>
                                        <li class="grass7" title="23년 9월 16일"></li>
                                        <li class="grass7" title="23년 9월 23일"></li>
                                        <li class="grass7" title="23년 9월 30일"></li>
                                        <li class="grass7" title="23년 10월 7일"></li>
                                        <li class="grass7" title="23년 10월 14일"></li>
                                        <li class="grass7" title="23년 10월 21일"></li>
                                        <li class="grass7" title="23년 10월 28일"></li>
                                        <li class="grass7" title="23년 11월 4일"></li>
                                        <li class="grass7" title="23년 11월 11일"></li>
                                        <li class="grass7" title="23년 11월 18일"></li>
                                        <li class="grass7" title="23년 11월 25일"></li>
                                        <li class="grass7" title="23년 12월 2일"></li>
                                        <li class="grass7" title="23년 12월 9일"></li>
                                        <li class="grass7" title="23년 12월 16일"></li>
                                        <li class="grass7" title="23년 12월 23일"></li>
                                        <li class="grass7" title="23년 12월 30일"></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- 잔디심기 상태 부분 -->
                        <div id="makegrass-status-box">
                            <div id="status">Less</div>
                            <div id="box1"></div>
                            <div id="box2"></div>
                            <div id="box3"></div>
                            <div id="status">More</div>
                        </div>

                        <div class="mainbox">
                            <!-- 리스트1 -->
                            <c:forEach items="${makegrassList}" var="map">
                                <a href="/app/makegrass/detail?no=${map.NO}">
                                    <div class="mainlist">
                                        <div class="title"><i class="fa-solid fa-pencil"></i> Title <br><br>${map.TITLE}</div>
                                        <div class="clockimg"><i class="fa-regular fa-clock"></i> ${map.LEARN_TIME}</div>
                                        <div class="bookimg"><i class="fa-solid fa-book"></i></div>
                                        <div class="content">
                                            ${map.CONTENT}
                                        </div>
                                        <div class="contentline"></div>
                                        <div class="info">
                                            <ul>
                                                <li class="contentDate">${map.ENROLL_DATE}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>