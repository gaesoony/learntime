<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #mypage-box{
        width: 1200px;
        height: 100%;
        margin: auto;
    }
    #mypage{
        width: 100%;
        height: 1700px;
        display: grid;
        grid-template-columns: 300px 900px;
    }
    #home-area{
        padding: 40px;
        display: grid;
        grid-template-rows: 230px 210px 210px;
    }

    /* 첫번째 리스트 */
    .makegrass-list{
        border: 1px solid #D9D9D9;
        width: 1000px;
        height: 740px;
    }
    .makegrass-list-title{
        font-size: 18px;
        margin-top: 30px;
        margin-left: 30px;
    }

    /* MY 잔디심기 */
    .makegrass-box{
        border: 2px solid #5ECC80;
        position: absolute;
        width: 49vw;
        height: 26vh;
        background-color: white;
        border-radius: 20px;
        margin-left: 30px;
        margin-top: 20px;
    }
    .monthbox{
        width: 100%;
        margin-top: 10px;
        display: flex;
        margin-left: 80px;
    }
    .month{
        margin-right: 50px;
        font-size: 14px;
    }
    .daybox{
        width: 3vw;
        margin-left: 20px;
        margin-top: 13px;
        float: left;
    }
    .day{
        font-size: 13px;
        margin-bottom: 15px;
    }
    .grassbox1{
        display: flex;
        margin-top: 13px;
        margin-right: 10px;
    }
    .grass1{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox2{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass2{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox3{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass3{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox4{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass4{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox5{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass5{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox6{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass6{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }
    .grassbox7{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass7{
        width: 13px;
        height: 13px;
        background-color: #D9D9D9;
        margin-right: 3px;
    }

    /* 잔디심기 박스 아래 상태 */
    .makegrass-status{
        height: 3vh;
        margin-top: 80px;
        margin-left: 815px;
        font-size: 17px;
    }
    .makegrass-status-ul{
        display: flex;
    }
    .status-box1{
        margin-top: 4px;
        margin-left: 2.5px;
        margin-right: 2.5px;
        width: 13px;
        height: 13px;
        background-color: #AEDDBD;
    }
    .status-box2{
        margin-top: 4px;
        margin-left: 2.5px;
        margin-right: 2.5px;
        width: 13px;
        height: 13px;
        background-color: #72DA92;
    }
    .status-box3{
        margin-top: 4px;
        margin-left: 2.5px;
        margin-right: 2.5px;
        width: 13px;
        height: 13px;
        background-color: #3CB160;
    }

    /* MY 공부인증 리스트 */
    .my-makegrass-title{
        font-size: 20px;
        margin-bottom: 20px;
    }
    .my-makegrass-box{
        width: 48.5vw;
        margin: 0 auto;
        margin-top: -80px;
    }
    .mainlist{
        margin: 0 auto;
        width: 233px;
        height: 297px;
        border: 2px solid #5ECC80;
        border-radius: 20px;
        background-color: white;
        float: left;
        margin-right: 25px;
        margin-bottom: 25px;
    }
    .thumbnail{
        width: 200px;
        height: 80px;
        background-color: #5ECC80;
        margin: 0 auto;
        margin-top: 20px;
    }
    .clockimg{
        margin-left: 20px;
        margin-top: 10px;
        font-size: 15px;
    }
    .bookimg{
        font-size: 15px;
        margin-left: 21px;
        margin-top: 10px;
    }
    .content{
        width: 10vw;
        height: 9vh;
        font-size: 14px;
        margin-left: 20px;
        margin-top: 5px;
        line-height: 20px;
    }
    .contentline{
        width: 90%;
        margin: 0 auto;
        margin-top: 20px;
        border-top: 2px solid #5ECC80;
    }
    .contentDate{
        font-size: 15px;
        margin-left: 20px;
        margin-top: 10px;
        color: #868686;
    }

    /* 더보기 */
    .plus-my-makegrass-box{
        margin-left: 820px;
        margin-top: 150px;
        width: 5vw;
    }
    .plus{
        font-size: 20px;
        font-weight: 550;
        color: #868686;
    }

    /* 두번째 리스트 */
    .scrap-list-box{
        border: 1px solid #D9D9D9;
        width: 1000px;
        height: 740px;
        margin-top: 120px;
    }
    .scrap-list-title{
        margin-top: 30px;
        margin-left: 30px;
        font-size: 18px;
    }
    .scrap-list{
        margin-top: 20px;
        margin-left: 30px;
    }

    /* 더보기 */
    .plus-scrap-box{
        margin-left: 860px;
        margin-top: 160px;
        width: 5vw;
    }
    .scrap-plus{
        font-size: 20px;
        font-weight: 550;
        color: #868686;
    }

    /* 댓글 모음 부분 */
    .reply-list-title{
        margin-top: 190px;
        margin-left: 40px;
        font-size: 18px;
    }
    .reply-list-box{
        width: 233px;
        height: 25vh;
        border: 1px solid #989898;
        border-radius: 20px;
        margin-top: 20px;
        margin-left: 30px;
        float: left;
    }
    .reply-content{
        width: 210px;
        height: 23vh;
        margin: 0 auto;
        margin-top: 10px;
        line-height: 25px;
    }
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="mypage-box">
        <div id="mypage">
            <div id="bin">
                <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
            </div>
            <div id="home-area">

                <!-- 첫번째 리스트 -->
                <div class="makegrass-list">
                    <!-- 전체, 해결, 미해결 카테고리 -->
                    <div class="makegrass-list-title">MY 잔디심기</div>
                    <div class="line1"></div>

                    <div class="makegrass-box">
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
                                <li class="grass1" title="22년 1월 1일"></li>
                                <li class="grass1" title="22년 1월 8일"></li>
                                <li class="grass1" title="22년 1월 15일"></li>
                                <li class="grass1" title="22년 1월 22일"></li>
                                <li class="grass1" title="22년 1월 29일"></li>
                                <li class="grass1" title="22년 2월 5일"></li>
                                <li class="grass1" title="22년 2월 12일"></li>
                                <li class="grass1" title="22년 2월 19일"></li>
                                <li class="grass1" title="22년 2월 26일"></li>
                                <li class="grass1" title="22년 3월 5일"></li>
                                <li class="grass1" title="22년 3월 12일"></li>
                                <li class="grass1" title="22년 3월 19일"></li>
                                <li class="grass1" title="22년 3월 26일"></li>
                                <li class="grass1" title="22년 4월 2일"></li>
                                <li class="grass1" title="22년 4월 9일"></li>
                                <li class="grass1" title="22년 4월 16일"></li>
                                <li class="grass1" title="22년 4월 23일"></li>
                                <li class="grass1" title="22년 4월 30일"></li>
                                <li class="grass1" title="22년 5월 7일"></li>
                                <li class="grass1" title="22년 5월 14일"></li>
                                <li class="grass1" title="22년 5월 21일"></li>
                                <li class="grass1" title="22년 5월 28일"></li>
                                <li class="grass1" title="22년 6월 4일"></li>
                                <li class="grass1" title="22년 6월 11일"></li>
                                <li class="grass1" title="22년 6월 18일"></li>
                                <li class="grass1" title="22년 6월 25일"></li>
                                <li class="grass1" title="22년 7월 2일"></li>
                                <li class="grass1" title="22년 7월 9일"></li>
                                <li class="grass1" title="22년 7월 16일"></li>
                                <li class="grass1" title="22년 7월 23일"></li>
                                <li class="grass1" title="22년 7월 30일"></li>
                                <li class="grass1" title="22년 8월 6일"></li>
                                <li class="grass1" title="22년 8월 13일"></li>
                                <li class="grass1" title="22년 8월 20일"></li>
                                <li class="grass1" title="22년 8월 27일"></li>
                                <li class="grass1" title="22년 9월 3일"></li>
                                <li class="grass1" title="22년 9월 10일"></li>
                                <li class="grass1" title="22년 9월 17일"></li>
                                <li class="grass1" title="22년 9월 24일"></li>
                                <li class="grass1" title="22년 10월 1일"></li>
                                <li class="grass1" title="22년 10월 8일"></li>
                                <li class="grass1" title="22년 10월 15일"></li>
                                <li class="grass1" title="22년 10월 22일"></li>
                                <li class="grass1" title="22년 10월 29일"></li>
                                <li class="grass1" title="22년 11월 5일"></li>
                                <li class="grass1" title="22년 11월 12일"></li>
                                <li class="grass1" title="22년 11월 19일"></li>
                                <li class="grass1" title="22년 11월 26일"></li>
                                <li class="grass1" title="22년 12월 3일"></li>
                                <li class="grass1" title="22년 12월 10일"></li>
                                <li class="grass1" title="22년 12월 17일"></li>
                                <li class="grass1" title="22년 12월 24일"></li>
                                <li class="grass1" title="22년 12월 31일"></li>
                            </ul>
                            <ul class="grassbox2">
                                <li class="grass2" title="22년 1월 2일"></li>
                                <li class="grass2" title="22년 1월 9일"></li>
                                <li class="grass2" title="22년 1월 16일"></li>
                                <li class="grass2" title="22년 1월 23일"></li>
                                <li class="grass2" title="22년 1월 30일"></li>
                                <li class="grass2" title="22년 2월 6일"></li>
                                <li class="grass2" title="22년 2월 13일"></li>
                                <li class="grass2" title="22년 2월 20일"></li>
                                <li class="grass2" title="22년 2월 27일"></li>
                                <li class="grass2" title="22년 3월 6일"></li>
                                <li class="grass2" title="22년 3월 13일"></li>
                                <li class="grass2" title="22년 3월 20일"></li>
                                <li class="grass2" title="22년 3월 27일"></li>
                                <li class="grass2" title="22년 4월 3일"></li>
                                <li class="grass2" title="22년 4월 10일"></li>
                                <li class="grass2" title="22년 4월 17일"></li>
                                <li class="grass2" title="22년 4월 24일"></li>
                                <li class="grass2" title="22년 5월 1일"></li>
                                <li class="grass2" title="22년 5월 8일"></li>
                                <li class="grass2" title="22년 5월 15일"></li>
                                <li class="grass2" title="22년 5월 22일"></li>
                                <li class="grass2" title="22년 5월 29일"></li>
                                <li class="grass2" title="22년 6월 5일"></li>
                                <li class="grass2" title="22년 6월 12일"></li>
                                <li class="grass2" title="22년 6월 19일"></li>
                                <li class="grass2" title="22년 6월 26일"></li>
                                <li class="grass2" title="22년 7월 3일"></li>
                                <li class="grass2" title="22년 7월 10일"></li>
                                <li class="grass2" title="22년 7월 17일"></li>
                                <li class="grass2" title="22년 7월 24일"></li>
                                <li class="grass2" title="22년 7월 31일"></li>
                                <li class="grass2" title="22년 8월 7일"></li>
                                <li class="grass2" title="22년 8월 14일"></li>
                                <li class="grass2" title="22년 8월 21일"></li>
                                <li class="grass2" title="22년 8월 28일"></li>
                                <li class="grass2" title="22년 9월 4일"></li>
                                <li class="grass2" title="22년 9월 11일"></li>
                                <li class="grass2" title="22년 9월 18일"></li>
                                <li class="grass2" title="22년 9월 25일"></li>
                                <li class="grass2" title="22년 10월 2일"></li>
                                <li class="grass2" title="22년 10월 9일"></li>
                                <li class="grass2" title="22년 10월 16일"></li>
                                <li class="grass2" title="22년 10월 23일"></li>
                                <li class="grass2" title="22년 10월 30일"></li>
                                <li class="grass2" title="22년 11월 6일"></li>
                                <li class="grass2" title="22년 11월 13일"></li>
                                <li class="grass2" title="22년 11월 20일"></li>
                                <li class="grass2" title="22년 11월 27일"></li>
                                <li class="grass2" title="22년 12월 4일"></li>
                                <li class="grass2" title="22년 12월 11일"></li>
                                <li class="grass2" title="22년 12월 18일"></li>
                                <li class="grass2" title="22년 12월 25일"></li>
                            </ul>
                            <ul class="grassbox3">
                                <li class="grass3" title="22년 1월 3일"></li>
                                <li class="grass3" title="22년 1월 10일"></li>
                                <li class="grass3" title="22년 1월 17일"></li>
                                <li class="grass3" title="22년 1월 24일"></li>
                                <li class="grass3" title="22년 1월 31일"></li>
                                <li class="grass3" title="22년 2월 7일"></li>
                                <li class="grass3" title="22년 2월 14일"></li>
                                <li class="grass3" title="22년 2월 21일"></li>
                                <li class="grass3" title="22년 2월 28일"></li>
                                <li class="grass3" title="22년 3월 7일"></li>
                                <li class="grass3" title="22년 3월 14일"></li>
                                <li class="grass3" title="22년 3월 21일"></li>
                                <li class="grass3" title="22년 3월 28일"></li>
                                <li class="grass3" title="22년 4월 4일"></li>
                                <li class="grass3" title="22년 4월 11일"></li>
                                <li class="grass3" title="22년 4월 18일"></li>
                                <li class="grass3" title="22년 4월 25일"></li>
                                <li class="grass3" title="22년 5월 2일"></li>
                                <li class="grass3" title="22년 5월 9일"></li>
                                <li class="grass3" title="22년 5월 16일"></li>
                                <li class="grass3" title="22년 5월 23일"></li>
                                <li class="grass3" title="22년 5월 30일"></li>
                                <li class="grass3" title="22년 6월 6일"></li>
                                <li class="grass3" title="22년 6월 13일"></li>
                                <li class="grass3" title="22년 6월 20일"></li>
                                <li class="grass3" title="22년 6월 27일"></li>
                                <li class="grass3" title="22년 7월 4일"></li>
                                <li class="grass3" title="22년 7월 11일"></li>
                                <li class="grass3" title="22년 7월 18일"></li>
                                <li class="grass3" title="22년 7월 25일"></li>
                                <li class="grass3" title="22년 8월 1일"></li>
                                <li class="grass3" title="22년 8월 8일"></li>
                                <li class="grass3" title="22년 8월 15일"></li>
                                <li class="grass3" title="22년 8월 22일"></li>
                                <li class="grass3" title="22년 8월 29일"></li>
                                <li class="grass3" title="22년 9월 5일"></li>
                                <li class="grass3" title="22년 9월 12일"></li>
                                <li class="grass3" title="22년 9월 19일"></li>
                                <li class="grass3" title="22년 9월 26일"></li>
                                <li class="grass3" title="22년 10월 3일"></li>
                                <li class="grass3" title="22년 10월 10일"></li>
                                <li class="grass3" title="22년 10월 17일"></li>
                                <li class="grass3" title="22년 10월 24일"></li>
                                <li class="grass3" title="22년 10월 31일"></li>
                                <li class="grass3" title="22년 11월 7일"></li>
                                <li class="grass3" title="22년 11월 14일"></li>
                                <li class="grass3" title="22년 11월 21일"></li>
                                <li class="grass3" title="22년 11월 28일"></li>
                                <li class="grass3" title="22년 12월 5일"></li>
                                <li class="grass3" title="22년 12월 12일"></li>
                                <li class="grass3" title="22년 12월 19일"></li>
                                <li class="grass3" title="22년 12월 26일"></li>
                            </ul>
                            <ul class="grassbox4">
                                <li class="grass4" title="22년 1월 4일"></li>
                                <li class="grass4" title="22년 1월 11일"></li>
                                <li class="grass4" title="22년 1월 18일"></li>
                                <li class="grass4" title="22년 1월 25일"></li>
                                <li class="grass4" title="22년 2월 1일"></li>
                                <li class="grass4" title="22년 2월 8일"></li>
                                <li class="grass4" title="22년 2월 15일"></li>
                                <li class="grass4" title="22년 2월 22일"></li>
                                <li class="grass4" title="22년 3월 1일"></li>
                                <li class="grass4" title="22년 3월 8일"></li>
                                <li class="grass4" title="22년 3월 15일"></li>
                                <li class="grass4" title="22년 3월 22일"></li>
                                <li class="grass4" title="22년 3월 29일"></li>
                                <li class="grass4" title="22년 4월 5일"></li>
                                <li class="grass4" title="22년 4월 12일"></li>
                                <li class="grass4" title="22년 4월 19일"></li>
                                <li class="grass4" title="22년 4월 26일"></li>
                                <li class="grass4" title="22년 5월 3일"></li>
                                <li class="grass4" title="22년 5월 10일"></li>
                                <li class="grass4" title="22년 5월 17일"></li>
                                <li class="grass4" title="22년 5월 24일"></li>
                                <li class="grass4" title="22년 5월 31일"></li>
                                <li class="grass4" title="22년 6월 7일"></li>
                                <li class="grass4" title="22년 6월 14일"></li>
                                <li class="grass4" title="22년 6월 21일"></li>
                                <li class="grass4" title="22년 6월 28일"></li>
                                <li class="grass4" title="22년 7월 5일"></li>
                                <li class="grass4" title="22년 7월 12일"></li>
                                <li class="grass4" title="22년 7월 19일"></li>
                                <li class="grass4" title="22년 7월 26일"></li>
                                <li class="grass4" title="22년 8월 2일"></li>
                                <li class="grass4" title="22년 8월 9일"></li>
                                <li class="grass4" title="22년 8월 16일"></li>
                                <li class="grass4" title="22년 8월 23일"></li>
                                <li class="grass4" title="22년 8월 30일"></li>
                                <li class="grass4" title="22년 9월 6일"></li>
                                <li class="grass4" title="22년 9월 13일"></li>
                                <li class="grass4" title="22년 9월 20일"></li>
                                <li class="grass4" title="22년 9월 27일"></li>
                                <li class="grass4" title="22년 10월 4일"></li>
                                <li class="grass4" title="22년 10월 11일"></li>
                                <li class="grass4" title="22년 10월 18일"></li>
                                <li class="grass4" title="22년 10월 25일"></li>
                                <li class="grass4" title="22년 11월 1일"></li>
                                <li class="grass4" title="22년 11월 8일"></li>
                                <li class="grass4" title="22년 11월 15일"></li>
                                <li class="grass4" title="22년 11월 22일"></li>
                                <li class="grass4" title="22년 11월 29일"></li>
                                <li class="grass4" title="22년 12월 6일"></li>
                                <li class="grass4" title="22년 12월 13일"></li>
                                <li class="grass4" title="22년 12월 20일"></li>
                                <li class="grass4" title="22년 12월 27일"></li>
                            </ul>
                            <ul class="grassbox5">
                                <li class="grass5" title="22년 1월 5일"></li>
                                <li class="grass5" title="22년 1월 12일"></li>
                                <li class="grass5" title="22년 1월 19일"></li>
                                <li class="grass5" title="22년 1월 26일"></li>
                                <li class="grass5" title="22년 2월 2일"></li>
                                <li class="grass5" title="22년 2월 9일"></li>
                                <li class="grass5" title="22년 2월 16일"></li>
                                <li class="grass5" title="22년 2월 23일"></li>
                                <li class="grass5" title="22년 3월 2일"></li>
                                <li class="grass5" title="22년 3월 9일"></li>
                                <li class="grass5" title="22년 3월 16일"></li>
                                <li class="grass5" title="22년 3월 23일"></li>
                                <li class="grass5" title="22년 3월 30일"></li>
                                <li class="grass5" title="22년 4월 6일"></li>
                                <li class="grass5" title="22년 4월 13일"></li>
                                <li class="grass5" title="22년 4월 20일"></li>
                                <li class="grass5" title="22년 4월 27일"></li>
                                <li class="grass5" title="22년 5월 4일"></li>
                                <li class="grass5" title="22년 5월 11일"></li>
                                <li class="grass5" title="22년 5월 18일"></li>
                                <li class="grass5" title="22년 5월 25일"></li>
                                <li class="grass5" title="22년 6월 1일"></li>
                                <li class="grass5" title="22년 6월 8일"></li>
                                <li class="grass5" title="22년 6월 15일"></li>
                                <li class="grass5" title="22년 6월 22일"></li>
                                <li class="grass5" title="22년 6월 29일"></li>
                                <li class="grass5" title="22년 7월 6일"></li>
                                <li class="grass5" title="22년 7월 13일"></li>
                                <li class="grass5" title="22년 7월 20일"></li>
                                <li class="grass5" title="22년 7월 27일"></li>
                                <li class="grass5" title="22년 8월 3일"></li>
                                <li class="grass5" title="22년 8월 10일"></li>
                                <li class="grass5" title="22년 8월 17일"></li>
                                <li class="grass5" title="22년 8월 24일"></li>
                                <li class="grass5" title="22년 8월 31일"></li>
                                <li class="grass5" title="22년 9월 7일"></li>
                                <li class="grass5" title="22년 9월 14일"></li>
                                <li class="grass5" title="22년 9월 21일"></li>
                                <li class="grass5" title="22년 9월 28일"></li>
                                <li class="grass5" title="22년 10월 5일"></li>
                                <li class="grass5" title="22년 10월 12일"></li>
                                <li class="grass5" title="22년 10월 19일"></li>
                                <li class="grass5" title="22년 10월 26일"></li>
                                <li class="grass5" title="22년 11월 2일"></li>
                                <li class="grass5" title="22년 11월 9일"></li>
                                <li class="grass5" title="22년 11월 16일"></li>
                                <li class="grass5" title="22년 11월 23일"></li>
                                <li class="grass5" title="22년 11월 30일"></li>
                                <li class="grass5" title="22년 12월 7일"></li>
                                <li class="grass5" title="22년 12월 14일"></li>
                                <li class="grass5" title="22년 12월 21일"></li>
                                <li class="grass5" title="22년 12월 28일"></li>
                            </ul>
                            <ul class="grassbox6">
                                <li class="grass6" title="22년 1월 6일"></li>
                                <li class="grass6" title="22년 1월 13일"></li>
                                <li class="grass6" title="22년 1월 20일"></li>
                                <li class="grass6" title="22년 1월 27일"></li>
                                <li class="grass6" title="22년 2월 3일"></li>
                                <li class="grass6" title="22년 2월 10일"></li>
                                <li class="grass6" title="22년 2월 17일"></li>
                                <li class="grass6" title="22년 2월 24일"></li>
                                <li class="grass6" title="22년 3월 3일"></li>
                                <li class="grass6" title="22년 3월 10일"></li>
                                <li class="grass6" title="22년 3월 17일"></li>
                                <li class="grass6" title="22년 3월 24일"></li>
                                <li class="grass6" title="22년 3월 31일"></li>
                                <li class="grass6" title="22년 4월 7일"></li>
                                <li class="grass6" title="22년 4월 14일"></li>
                                <li class="grass6" title="22년 4월 21일"></li>
                                <li class="grass6" title="22년 4월 29일"></li>
                                <li class="grass6" title="22년 5월 5일"></li>
                                <li class="grass6" title="22년 5월 12일"></li>
                                <li class="grass6" title="22년 5월 19일"></li>
                                <li class="grass6" title="22년 5월 26일"></li>
                                <li class="grass6" title="22년 6월 2일"></li>
                                <li class="grass6" title="22년 6월 9일"></li>
                                <li class="grass6" title="22년 6월 16일"></li>
                                <li class="grass6" title="22년 6월 23일"></li>
                                <li class="grass6" title="22년 6월 30일"></li>
                                <li class="grass6" title="22년 7월 7일"></li>
                                <li class="grass6" title="22년 7월 14일"></li>
                                <li class="grass6" title="22년 7월 21일"></li>
                                <li class="grass6" title="22년 7월 28일"></li>
                                <li class="grass6" title="22년 8월 4일"></li>
                                <li class="grass6" title="22년 8월 11일"></li>
                                <li class="grass6" title="22년 8월 18일"></li>
                                <li class="grass6" title="22년 8월 25일"></li>
                                <li class="grass6" title="22년 9월 1일"></li>
                                <li class="grass6" title="22년 9월 8일"></li>
                                <li class="grass6" title="22년 9월 15일"></li>
                                <li class="grass6" title="22년 9월 22일"></li>
                                <li class="grass6" title="22년 9월 29일"></li>
                                <li class="grass6" title="22년 10월 6일"></li>
                                <li class="grass6" title="22년 10월 13일"></li>
                                <li class="grass6" title="22년 10월 20일"></li>
                                <li class="grass6" title="22년 10월 27일"></li>
                                <li class="grass6" title="22년 11월 3일"></li>
                                <li class="grass6" title="22년 11월 10일"></li>
                                <li class="grass6" title="22년 11월 17일"></li>
                                <li class="grass6" title="22년 11월 24일"></li>
                                <li class="grass6" title="22년 12월 1일"></li>
                                <li class="grass6" title="22년 12월 8일"></li>
                                <li class="grass6" title="22년 12월 15일"></li>
                                <li class="grass6" title="22년 12월 22일"></li>
                                <li class="grass6" title="22년 12월 29일"></li>
                            </ul>
                            <ul class="grassbox7">
                                <li class="grass7" title="22년 1월 7일"></li>
                                <li class="grass7" title="22년 1월 14일"></li>
                                <li class="grass7" title="22년 1월 21일"></li>
                                <li class="grass7" title="22년 1월 28일"></li>
                                <li class="grass7" title="22년 2월 4일"></li>
                                <li class="grass7" title="22년 2월 11일"></li>
                                <li class="grass7" title="22년 2월 18일"></li>
                                <li class="grass7" title="22년 2월 25일"></li>
                                <li class="grass7" title="22년 3월 4일"></li>
                                <li class="grass7" title="22년 3월 11일"></li>
                                <li class="grass7" title="22년 3월 18일"></li>
                                <li class="grass7" title="22년 3월 25일"></li>
                                <li class="grass7" title="22년 4월 1일"></li>
                                <li class="grass7" title="22년 4월 8일"></li>
                                <li class="grass7" title="22년 4월 15일"></li>
                                <li class="grass7" title="22년 4월 22일"></li>
                                <li class="grass7" title="22년 4월 29일"></li>
                                <li class="grass7" title="22년 5월 6일"></li>
                                <li class="grass7" title="22년 5월 13일"></li>
                                <li class="grass7" title="22년 5월 20일"></li>
                                <li class="grass7" title="22년 5월 27일"></li>
                                <li class="grass7" title="22년 6월 3일"></li>
                                <li class="grass7" title="22년 6월 10일"></li>
                                <li class="grass7" title="22년 6월 17일"></li>
                                <li class="grass7" title="22년 6월 24일"></li>
                                <li class="grass7" title="22년 7월 1일"></li>
                                <li class="grass7" title="22년 7월 8일"></li>
                                <li class="grass7" title="22년 7월 15일"></li>
                                <li class="grass7" title="22년 7월 22일"></li>
                                <li class="grass7" title="22년 7월 29일"></li>
                                <li class="grass7" title="22년 8월 5일"></li>
                                <li class="grass7" title="22년 8월 12일"></li>
                                <li class="grass7" title="22년 8월 19일"></li>
                                <li class="grass7" title="22년 8월 26일"></li>
                                <li class="grass7" title="22년 9월 2일"></li>
                                <li class="grass7" title="22년 9월 9일"></li>
                                <li class="grass7" title="22년 9월 16일"></li>
                                <li class="grass7" title="22년 9월 23일"></li>
                                <li class="grass7" title="22년 9월 30일"></li>
                                <li class="grass7" title="22년 10월 7일"></li>
                                <li class="grass7" title="22년 10월 14일"></li>
                                <li class="grass7" title="22년 10월 21일"></li>
                                <li class="grass7" title="22년 10월 28일"></li>
                                <li class="grass7" title="22년 11월 4일"></li>
                                <li class="grass7" title="22년 11월 11일"></li>
                                <li class="grass7" title="22년 11월 18일"></li>
                                <li class="grass7" title="22년 11월 25일"></li>
                                <li class="grass7" title="22년 12월 2일"></li>
                                <li class="grass7" title="22년 12월 9일"></li>
                                <li class="grass7" title="22년 12월 16일"></li>
                                <li class="grass7" title="22년 12월 23일"></li>
                                <li class="grass7" title="22년 12월 30일"></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 잔디심기 아래 박스 상태 -->
                <div class="makegrass-status">
                    <ul class="makegrass-status-ul">
                        <li class="status">Less</li>
                        <li class="status-box1"><div></div></li>
                        <li class="status-box2"><div></div></li>
                        <li class="status-box3"><div></div></li>
                        <li class="status">More</li>
                    </ul>
                </div>

                <!-- MY 공부인증 리스트 -->
                <div class="my-makegrass-box">
                    <div class="my-makegrass-title">MY 공부인증</div>
                    <!-- 1 -->
                    <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                <li class="contentDate">2202-12-09</li>
                            </ul>
                        </div>
                    </div>

                    <!-- 2 -->
                    <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                <li class="contentDate">2202-12-09</li>
                            </ul>
                        </div>
                    </div>

                    <!-- 3 -->
                    <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                <li class="contentDate">2202-12-09</li>
                            </ul>
                        </div>
                    </div>

                    <!-- 더보기 -->
                    <div class="plus-my-makegrass-box">
                        <div class="plus" onclick="navToList()" style="cursor: pointer;">더보기 <i class="fa-solid fa-angle-right"></i></div>
                    </div>
                </div>

                <!-- 두번째 리스트 -->
                <div class="scrap-list-box">
                    <div class="scrap-list-content">
                        <div class="scrap-list-title"><i class="fa-regular fa-bookmark"></i> 공부인증 스크랩</div>
                            <!-- 본문 리스트 -->
                            <div class="scrap-list">
                                <!-- 1 -->
                                <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                            <li class="contentDate">2202-12-09</li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- 2 -->
                                <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                            <li class="contentDate">2202-12-09</li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- 3 -->
                                <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
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
                                            <li class="contentDate">2202-12-09</li>
                                        </ul>
                                    </div>
                                </div>
                                <!--  -->
                            </div>
                        </div>

                        <!-- 더보기 -->
                        <div class="plus-scrap-box">
                            <div class="scrap-plus" onclick="navToList()" style="cursor: pointer;">더보기 <i class="fa-solid fa-angle-right"></i></div>
                        </div>

                    <!-- 댓글 모음 -->
                    <div class="reply-list-title"><i class="fa-regular fa-comment"></i> MY 댓글 모음</div>
                    <div class="reply-list">

                        <!-- 1 -->
                        <div class="reply-list-box">
                            <div class="reply-content">
                                이거는 댓글 모음집에 있는 댓글 이렇게 네모 안에 있는거. 이거슨 댓글 모음집. 모음집.
                            </div>
                        </div>

                        <!-- 2 -->
                        <div class="reply-list-box">
                            <div class="reply-content">
                                이거는 댓글 모음집에 있는 댓글 이렇게 네모 안에 있는거. 이거슨 댓글 모음집. 모음집.
                            </div>
                        </div>

                        <!-- 3 -->
                        <div class="reply-list-box">
                            <div class="reply-content">
                                이거는 댓글 모음집에 있는 댓글 이렇게 네모 안에 있는거. 이거슨 댓글 모음집. 모음집.
                            </div>
                        </div>
                        <!--  -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script>
        function navToDetail(){
            window.location.href="/app/makegrass/detail";
        }

        function navToList(){
            window.location.href="/app/makegrass/list";
        }
    </script>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
    
</script>
</body>
</html>